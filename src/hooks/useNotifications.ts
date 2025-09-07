import { useState, useEffect } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/AuthContext';
import { useToast } from '@/hooks/use-toast';

export interface AppNotification {
  id: string;
  title: string;
  message: string;
  type: 'success' | 'warning' | 'info' | 'reminder';
  timestamp: Date;
  read: boolean;
  actionUrl?: string;
  actionLabel?: string;
}

export const useNotifications = () => {
  const [notifications, setNotifications] = useState<AppNotification[]>([]);
  const [unreadCount, setUnreadCount] = useState(0);
  const { user } = useAuth();
  const { toast } = useToast();

  const generateSystemNotifications = async (): Promise<AppNotification[]> => {
    if (!user) return [];

    const systemNotifications: AppNotification[] = [];

    try {
      // Check quiz completion
      const { data: quizData } = await supabase
        .from('quiz_responses')
        .select('completed_at')
        .eq('user_id', user.id);

      // Check recommendations
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

      // Welcome notification
      if (!quizData || quizData.length === 0) {
        systemNotifications.push({
          id: 'welcome-quiz',
          title: 'Welcome to EdVise! 🎉',
          message: 'Take our career assessment quiz to get personalized recommendations tailored to your interests and goals.',
          type: 'info',
          timestamp: new Date(),
          read: false,
          actionUrl: '/quiz',
          actionLabel: 'Take Quiz Now'
        });
      }

      // Profile completion
      if (profileData) {
        const fields = [profileData.full_name, profileData.location, profileData.phone];
        const completedFields = fields.filter(field => field && field.trim() !== '').length;
        const completionRate = (completedFields / fields.length) * 100;

        if (completionRate < 100) {
          systemNotifications.push({
            id: 'complete-profile',
            title: 'Complete Your Profile',
            message: `Your profile is ${Math.round(completionRate)}% complete. Complete it for better personalized recommendations.`,
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

        if (hoursDiff < 24) {
          systemNotifications.push({
            id: 'new-recommendations',
            title: 'Your Career Recommendations Are Ready! 🚀',
            message: 'Discover personalized career paths and college recommendations based on your quiz results.',
            type: 'success',
            timestamp: recTime,
            read: false,
            actionUrl: '/recommendations',
            actionLabel: 'View Recommendations'
          });
        }
      }

      // Explore colleges notification
      if (recommendationsData && recommendationsData.length > 0) {
        systemNotifications.push({
          id: 'explore-colleges',
          title: 'Explore Recommended Colleges',
          message: 'Find colleges near you that match your career recommendations on our interactive map.',
          type: 'info',
          timestamp: new Date(),
          read: false,
          actionUrl: '/colleges',
          actionLabel: 'Find Colleges'
        });
      }

      // Scholarship opportunities
      systemNotifications.push({
        id: 'scholarship-opportunities',
        title: 'Scholarship Opportunities Available',
        message: 'Discover scholarships that could help fund your education. Don\'t miss out on financial aid opportunities.',
        type: 'reminder',
        timestamp: new Date(),
        read: false,
        actionUrl: '/scholarships',
        actionLabel: 'Browse Scholarships'
      });

    } catch (error) {
      console.error('Error generating notifications:', error);
    }

    return systemNotifications;
  };

  const loadNotifications = async () => {
    const systemNotifications = await generateSystemNotifications();
    setNotifications(systemNotifications);
    setUnreadCount(systemNotifications.filter(n => !n.read).length);
  };

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
    const notification = notifications.find(n => n.id === notificationId);
    if (notification && !notification.read) {
      setUnreadCount(prev => Math.max(0, prev - 1));
    }
  };

  const showToastNotification = (notification: AppNotification) => {
    toast({
      title: notification.title,
      description: notification.message,
      duration: 5000,
    });
  };

  useEffect(() => {
    if (user) {
      loadNotifications();

      // Set up real-time subscriptions
      const channel = supabase
        .channel('user-notifications')
        .on(
          'postgres_changes',
          {
            event: '*',
            schema: 'public',
            table: 'quiz_responses',
            filter: `user_id=eq.${user.id}`
          },
          () => loadNotifications()
        )
        .on(
          'postgres_changes',
          {
            event: '*',
            schema: 'public',
            table: 'recommendations',
            filter: `user_id=eq.${user.id}`
          },
          () => loadNotifications()
        )
        .on(
          'postgres_changes',
          {
            event: '*',
            schema: 'public',
            table: 'profiles',
            filter: `user_id=eq.${user.id}`
          },
          () => loadNotifications()
        )
        .subscribe();

      return () => {
        supabase.removeChannel(channel);
      };
    }
  }, [user]);

  return {
    notifications,
    unreadCount,
    markAsRead,
    markAllAsRead,
    dismissNotification,
    showToastNotification,
    refreshNotifications: loadNotifications
  };
};