import { useState, useEffect } from 'react';
import { Card } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { 
  Bell, 
  X, 
  CheckCircle, 
  AlertCircle, 
  Info, 
  Calendar,
  GraduationCap,
  Award,
  Brain
} from 'lucide-react';
import { useAuth } from '@/contexts/AuthContext';
import { supabase } from '@/integrations/supabase/client';
import { useToast } from '@/hooks/use-toast';

interface Notification {
  id: string;
  title: string;
  message: string;
  type: 'success' | 'warning' | 'info' | 'reminder';
  timestamp: Date;
  read: boolean;
  actionUrl?: string;
  actionLabel?: string;
}

const NotificationSystem = () => {
  const [notifications, setNotifications] = useState<Notification[]>([]);
  const [isOpen, setIsOpen] = useState(false);
  const [unreadCount, setUnreadCount] = useState(0);
  const { user } = useAuth();
  const { toast } = useToast();

  // Generate notifications based on user activity
  useEffect(() => {
    const generateNotifications = async () => {
      if (!user) return;

      const newNotifications: Notification[] = [];

      try {
        // Check if user has completed quiz
        const { data: quizData } = await supabase
          .from('quiz_responses')
          .select('completed_at')
          .eq('user_id', user.id);

        // Check if user has recommendations
        const { data: recommendationsData } = await supabase
          .from('recommendations')
          .select('generated_at')
          .eq('user_id', user.id);

        // Check profile completion
        const { data: profileData } = await supabase
          .from('profiles')
          .select('full_name, location, phone')
          .eq('user_id', user.id)
          .single();

        // Welcome notification for new users
        if (!quizData || quizData.length === 0) {
          newNotifications.push({
            id: 'welcome',
            title: 'Welcome to EdVise! 🎉',
            message: 'Take our career assessment quiz to get personalized recommendations.',
            type: 'info',
            timestamp: new Date(),
            read: false,
            actionUrl: '/quiz',
            actionLabel: 'Take Quiz'
          });
        }

        // Profile completion reminder
        if (profileData) {
          const fields = [profileData.full_name, profileData.location, profileData.phone];
          const completedFields = fields.filter(field => field && field.trim() !== '').length;
          const completionRate = (completedFields / fields.length) * 100;

          if (completionRate < 100) {
            newNotifications.push({
              id: 'profile-incomplete',
              title: 'Complete Your Profile',
              message: `Your profile is ${Math.round(completionRate)}% complete. Add more details for better recommendations.`,
              type: 'warning',
              timestamp: new Date(),
              read: false,
              actionUrl: '/profile',
              actionLabel: 'Complete Profile'
            });
          }
        }

        // New recommendations notification
        if (recommendationsData && recommendationsData.length > 0) {
          const latestRec = recommendationsData.sort((a, b) => 
            new Date(b.generated_at).getTime() - new Date(a.generated_at).getTime()
          )[0];
          
          const recTime = new Date(latestRec.generated_at);
          const timeDiff = Date.now() - recTime.getTime();
          const hoursDiff = timeDiff / (1000 * 60 * 60);

          // If recommendations are less than 24 hours old
          if (hoursDiff < 24) {
            newNotifications.push({
              id: 'new-recommendations',
              title: 'New Career Recommendations!',
              message: 'Your personalized career recommendations are ready to explore.',
              type: 'success',
              timestamp: recTime,
              read: false,
              actionUrl: '/recommendations',
              actionLabel: 'View Recommendations'
            });
          }
        }

        // Scholarship reminders (example)
        newNotifications.push({
          id: 'scholarship-deadline',
          title: 'Scholarship Deadline Approaching',
          message: 'National Merit Scholarship applications close in 7 days.',
          type: 'reminder',
          timestamp: new Date(),
          read: false,
          actionUrl: '/scholarships',
          actionLabel: 'View Scholarships'
        });

        // College application season reminder
        const currentMonth = new Date().getMonth();
        if (currentMonth >= 8 && currentMonth <= 11) { // Sep-Dec
          newNotifications.push({
            id: 'college-application-season',
            title: 'College Application Season',
            message: 'It\'s application season! Start exploring colleges based on your recommendations.',
            type: 'info',
            timestamp: new Date(),
            read: false,
            actionUrl: '/colleges',
            actionLabel: 'Explore Colleges'
          });
        }

        setNotifications(newNotifications);
        setUnreadCount(newNotifications.filter(n => !n.read).length);

      } catch (error) {
        console.error('Error generating notifications:', error);
      }
    };

    generateNotifications();

    // Set up real-time subscription for new data
    const channel = supabase
      .channel('notifications-updates')
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'quiz_responses',
          filter: `user_id=eq.${user?.id}`
        },
        () => generateNotifications()
      )
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'recommendations',
          filter: `user_id=eq.${user?.id}`
        },
        () => generateNotifications()
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [user]);

  const markAsRead = (notificationId: string) => {
    setNotifications(prev => 
      prev.map(n => 
        n.id === notificationId ? { ...n, read: true } : n
      )
    );
    setUnreadCount(prev => Math.max(0, prev - 1));
  };

  const markAllAsRead = () => {
    setNotifications(prev => prev.map(n => ({ ...n, read: true })));
    setUnreadCount(0);
  };

  const dismissNotification = (notificationId: string) => {
    setNotifications(prev => prev.filter(n => n.id !== notificationId));
    setUnreadCount(prev => {
      const notification = notifications.find(n => n.id === notificationId);
      return notification && !notification.read ? prev - 1 : prev;
    });
  };

  const getNotificationIcon = (type: string) => {
    switch (type) {
      case 'success': return CheckCircle;
      case 'warning': return AlertCircle;
      case 'reminder': return Calendar;
      case 'info': 
      default: return Info;
    }
  };

  const getNotificationColor = (type: string) => {
    switch (type) {
      case 'success': return 'text-green-500';
      case 'warning': return 'text-yellow-500';
      case 'reminder': return 'text-blue-500';
      case 'info':
      default: return 'text-accent';
    }
  };

  return (
    <div className="relative">
      {/* Notification Bell */}
      <Button
        variant="ghost"
        size="sm"
        onClick={() => setIsOpen(!isOpen)}
        className="relative"
      >
        <Bell className="h-5 w-5" />
        {unreadCount > 0 && (
          <Badge 
            variant="destructive" 
            className="absolute -top-1 -right-1 h-5 w-5 flex items-center justify-center text-xs p-0"
          >
            {unreadCount > 9 ? '9+' : unreadCount}
          </Badge>
        )}
      </Button>

      {/* Notification Panel */}
      {isOpen && (
        <div className="absolute right-0 top-full mt-2 w-80 md:w-96 bg-card border border-border rounded-lg shadow-elegant z-50 max-h-96 overflow-hidden">
          <div className="p-4 border-b border-border/50 flex items-center justify-between">
            <h3 className="font-semibold text-foreground">Notifications</h3>
            <div className="flex items-center space-x-2">
              {unreadCount > 0 && (
                <Button variant="ghost" size="sm" onClick={markAllAsRead}>
                  Mark all read
                </Button>
              )}
              <Button variant="ghost" size="sm" onClick={() => setIsOpen(false)}>
                <X className="h-4 w-4" />
              </Button>
            </div>
          </div>

          <div className="max-h-80 overflow-y-auto">
            {notifications.length === 0 ? (
              <div className="p-6 text-center">
                <Bell className="h-8 w-8 text-muted-foreground mx-auto mb-2" />
                <p className="text-sm text-muted-foreground">No notifications yet</p>
              </div>
            ) : (
              <div className="space-y-1">
                {notifications.map((notification) => {
                  const IconComponent = getNotificationIcon(notification.type);
                  const iconColor = getNotificationColor(notification.type);
                  
                  return (
                    <div
                      key={notification.id}
                      className={`p-4 border-b border-border/30 hover:bg-secondary/30 transition-colors ${
                        !notification.read ? 'bg-accent/5' : ''
                      }`}
                    >
                      <div className="flex items-start space-x-3">
                        <IconComponent className={`h-5 w-5 mt-0.5 ${iconColor}`} />
                        <div className="flex-1 min-w-0">
                          <div className="flex items-start justify-between">
                            <div className="flex-1">
                              <h4 className={`text-sm font-medium ${
                                !notification.read ? 'text-foreground' : 'text-muted-foreground'
                              }`}>
                                {notification.title}
                              </h4>
                              <p className="text-xs text-muted-foreground mt-1">
                                {notification.message}
                              </p>
                              <p className="text-xs text-muted-foreground mt-2">
                                {notification.timestamp.toLocaleDateString()}
                              </p>
                            </div>
                            <Button
                              variant="ghost"
                              size="sm"
                              onClick={() => dismissNotification(notification.id)}
                            >
                              <X className="h-3 w-3" />
                            </Button>
                          </div>
                          
                          {notification.actionUrl && (
                            <div className="mt-3 flex space-x-2">
                              <Button
                                variant="outline"
                                size="sm"
                                onClick={() => {
                                  markAsRead(notification.id);
                                  window.location.href = notification.actionUrl!;
                                }}
                              >
                                {notification.actionLabel}
                              </Button>
                              {!notification.read && (
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  onClick={() => markAsRead(notification.id)}
                                >
                                  Mark as read
                                </Button>
                              )}
                            </div>
                          )}
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default NotificationSystem;