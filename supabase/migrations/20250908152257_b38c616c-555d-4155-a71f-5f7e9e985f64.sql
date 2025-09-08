-- Insert comprehensive college data for India
INSERT INTO public.colleges (name, location, state, city, college_type, courses_offered, facilities, ranking, nirf_ranking, fees_range, establishment_year, affiliation, accreditation, phone, email, website_url, latitude, longitude) VALUES

-- IITs
('Indian Institute of Technology Delhi', 'Hauz Khas, New Delhi', 'Delhi', 'New Delhi', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Civil Engineering', 'Aerospace Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 2, 2, '2,00,000 - 10,00,000', 1961, 'Autonomous', 'NAAC A++', '+91-11-2659-1333', 'info@iitd.ac.in', 'https://www.iitd.ac.in', 28.5449, 77.1928),

('Indian Institute of Technology Bombay', 'Powai, Mumbai', 'Maharashtra', 'Mumbai', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Chemical Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 3, 3, '2,00,000 - 10,00,000', 1958, 'Autonomous', 'NAAC A++', '+91-22-2572-2545', 'info@iitb.ac.in', 'https://www.iitb.ac.in', 19.1334, 72.9133),

('Indian Institute of Technology Madras', 'Sardar Patel Road, Chennai', 'Tamil Nadu', 'Chennai', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Ocean Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 1, 1, '2,00,000 - 10,00,000', 1959, 'Autonomous', 'NAAC A++', '+91-44-2257-4802', 'info@iitm.ac.in', 'https://www.iitm.ac.in', 12.9915, 80.2336),

('Indian Institute of Technology Kanpur', 'Kalyanpur, Kanpur', 'Uttar Pradesh', 'Kanpur', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Aerospace Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 4, 4, '2,00,000 - 10,00,000', 1959, 'Autonomous', 'NAAC A++', '+91-512-259-7433', 'info@iitk.ac.in', 'https://www.iitk.ac.in', 26.5123, 80.2329),

('Indian Institute of Technology Kharagpur', 'Kharagpur', 'West Bengal', 'Kharagpur', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Mining Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 5, 5, '2,00,000 - 10,00,000', 1951, 'Autonomous', 'NAAC A++', '+91-3222-255221', 'info@iitkgp.ac.in', 'https://www.iitkgp.ac.in', 22.3149, 87.3105),

('Indian Institute of Technology Roorkee', 'Roorkee', 'Uttarakhand', 'Roorkee', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Civil Engineering', 'Electrical Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 6, 6, '2,00,000 - 10,00,000', 1847, 'Autonomous', 'NAAC A++', '+91-1332-285411', 'info@iitr.ac.in', 'https://www.iitr.ac.in', 29.8543, 77.8880),

('Indian Institute of Technology Guwahati', 'Guwahati', 'Assam', 'Guwahati', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Biotechnology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 7, 7, '2,00,000 - 10,00,000', 1994, 'Autonomous', 'NAAC A++', '+91-361-258-2748', 'info@iitg.ac.in', 'https://www.iitg.ac.in', 26.1445, 91.7362),

-- NITs
('National Institute of Technology Tiruchirappalli', 'Tiruchirappalli', 'Tamil Nadu', 'Tiruchirappalli', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Electronics'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 9, 9, '1,50,000 - 6,00,000', 1964, 'Government', 'NAAC A', '+91-431-250-3000', 'info@nitt.edu', 'https://www.nitt.edu', 10.7905, 78.7047),

('National Institute of Technology Warangal', 'Warangal', 'Telangana', 'Warangal', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Civil Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 19, 19, '1,50,000 - 6,00,000', 1959, 'Government', 'NAAC A', '+91-870-246-2000', 'info@nitw.ac.in', 'https://www.nitw.ac.in', 17.9784, 79.5941),

('National Institute of Technology Surathkal', 'Surathkal, Mangalore', 'Karnataka', 'Mangalore', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Chemical Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 13, 13, '1,50,000 - 6,00,000', 1960, 'Government', 'NAAC A', '+91-824-247-3000', 'info@nitk.edu.in', 'https://www.nitk.edu.in', 12.9716, 74.7965),

('National Institute of Technology Calicut', 'Kozhikode', 'Kerala', 'Kozhikode', 'Engineering', ARRAY['Computer Science', 'Mechanical Engineering', 'Electrical Engineering', 'Electronics'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 23, 23, '1,50,000 - 6,00,000', 1961, 'Government', 'NAAC A', '+91-495-228-6100', 'info@nitc.ac.in', 'https://www.nitc.ac.in', 11.2588, 75.7804),

-- Central Universities
('Jawaharlal Nehru University', 'New Mehrauli Road, New Delhi', 'Delhi', 'New Delhi', 'Central University', ARRAY['Arts', 'Science', 'Social Sciences', 'Languages', 'International Studies'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 2, 2, '50,000 - 2,00,000', 1969, 'Central University', 'NAAC A++', '+91-11-2670-4077', 'info@jnu.ac.in', 'https://www.jnu.ac.in', 28.5385, 77.1658),

('University of Delhi', 'University Road, Delhi', 'Delhi', 'New Delhi', 'Central University', ARRAY['Arts', 'Science', 'Commerce', 'Law', 'Education'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 11, 11, '30,000 - 1,50,000', 1922, 'Central University', 'NAAC A++', '+91-11-2766-7853', 'info@du.ac.in', 'https://www.du.ac.in', 28.6869, 77.2090),

('Banaras Hindu University', 'Varanasi', 'Uttar Pradesh', 'Varanasi', 'Central University', ARRAY['Engineering', 'Medicine', 'Arts', 'Science', 'Agriculture'], ARRAY['Library', 'Hostel', 'Laboratory', 'Hospital', 'Sports Complex'], 4, 4, '40,000 - 2,00,000', 1916, 'Central University', 'NAAC A++', '+91-542-230-7077', 'info@bhu.ac.in', 'https://www.bhu.ac.in', 25.2677, 82.9913),

('Aligarh Muslim University', 'Aligarh', 'Uttar Pradesh', 'Aligarh', 'Central University', ARRAY['Engineering', 'Medicine', 'Arts', 'Science', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Hospital', 'Sports Complex'], 8, 8, '30,000 - 1,80,000', 1875, 'Central University', 'NAAC A', '+91-571-270-0920', 'info@amu.ac.in', 'https://www.amu.ac.in', 27.8974, 78.0880),

-- AIIMS
('All India Institute of Medical Sciences Delhi', 'Ansari Nagar, New Delhi', 'Delhi', 'New Delhi', 'Medical College', ARRAY['Medicine', 'Nursing', 'Biotechnology'], ARRAY['Hospital', 'Library', 'Hostel', 'Laboratory', 'Research Center'], 1, 1, '5,000 - 50,000', 1956, 'Autonomous', 'NAAC A++', '+91-11-2659-3267', 'info@aiims.edu', 'https://www.aiims.edu', 28.5672, 77.2100),

('All India Institute of Medical Sciences Jodhpur', 'Basni Phase II, Jodhpur', 'Rajasthan', 'Jodhpur', 'Medical College', ARRAY['Medicine', 'Nursing'], ARRAY['Hospital', 'Library', 'Hostel', 'Laboratory'], 39, 39, '5,000 - 50,000', 2012, 'Autonomous', 'NAAC A', '+91-291-270-1340', 'info@aiimsjodhpur.edu.in', 'https://www.aiimsjodhpur.edu.in', 26.2389, 73.0243),

-- State Universities
('Anna University', 'Guindy, Chennai', 'Tamil Nadu', 'Chennai', 'State University', ARRAY['Engineering', 'Technology', 'Architecture'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 14, 14, '80,000 - 3,00,000', 1978, 'State University', 'NAAC A', '+91-44-2235-1365', 'info@annauniv.edu', 'https://www.annauniv.edu', 13.0067, 80.2206),

('Osmania University', 'University Road, Hyderabad', 'Telangana', 'Hyderabad', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law', 'Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 26, 26, '25,000 - 1,50,000', 1918, 'State University', 'NAAC A', '+91-40-2709-8000', 'info@osmania.ac.in', 'https://www.osmania.ac.in', 17.4126, 78.4071),

('University of Calcutta', 'Senate House, Kolkata', 'West Bengal', 'Kolkata', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Museum'], 62, 62, '20,000 - 1,00,000', 1857, 'State University', 'NAAC A', '+91-33-2241-4320', 'info@caluniv.ac.in', 'https://www.caluniv.ac.in', 22.5726, 88.3639),

('University of Mumbai', 'Kalina, Mumbai', 'Maharashtra', 'Mumbai', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law', 'Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 41, 41, '30,000 - 2,00,000', 1857, 'State University', 'NAAC A', '+91-22-2652-3000', 'info@mu.ac.in', 'https://www.mu.ac.in', 19.1136, 72.8697),

-- Private Universities
('Birla Institute of Technology and Science Pilani', 'Pilani', 'Rajasthan', 'Pilani', 'Private University', ARRAY['Engineering', 'Science', 'Management', 'Pharmacy'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 25, 25, '3,00,000 - 15,00,000', 1964, 'Deemed University', 'NAAC A', '+91-1596-242-204', 'info@pilani.bits-pilani.ac.in', 'https://www.bits-pilani.ac.in', 28.3670, 75.5877),

('Vellore Institute of Technology', 'Vellore', 'Tamil Nadu', 'Vellore', 'Private University', ARRAY['Engineering', 'Science', 'Management', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 15, 15, '1,50,000 - 8,00,000', 1984, 'Deemed University', 'NAAC A++', '+91-416-220-2020', 'info@vit.ac.in', 'https://www.vit.ac.in', 12.9692, 79.1559),

('Manipal Academy of Higher Education', 'Manipal', 'Karnataka', 'Manipal', 'Private University', ARRAY['Medicine', 'Engineering', 'Management', 'Allied Health'], ARRAY['Hospital', 'Library', 'Hostel', 'Laboratory', 'Sports Complex'], 45, 45, '2,00,000 - 20,00,000', 1953, 'Deemed University', 'NAAC A++', '+91-820-292-3000', 'info@manipal.edu', 'https://www.manipal.edu', 13.3409, 74.7421),

('Amity University Noida', 'Sector 125, Noida', 'Uttar Pradesh', 'Noida', 'Private University', ARRAY['Engineering', 'Management', 'Law', 'Journalism', 'Fine Arts'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 68, 68, '2,50,000 - 12,00,000', 2005, 'Private University', 'NAAC A+', '+91-120-439-0000', 'info@amity.edu', 'https://www.amity.edu', 28.5355, 77.3910),

-- More Engineering Colleges
('Delhi Technological University', 'Shahbad Daulatpur, New Delhi', 'Delhi', 'New Delhi', 'State University', ARRAY['Engineering', 'Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 36, 36, '1,50,000 - 4,00,000', 1941, 'State University', 'NAAC A+', '+91-11-2787-2200', 'info@dtu.ac.in', 'https://www.dtu.ac.in', 28.7500, 77.1167),

('Netaji Subhas University of Technology', 'Azad Hind Fauj Marg, New Delhi', 'Delhi', 'New Delhi', 'State University', ARRAY['Engineering', 'Technology', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 74, 74, '1,00,000 - 3,00,000', 1983, 'State University', 'NAAC A', '+91-11-2338-1051', 'info@nsut.ac.in', 'https://www.nsut.ac.in', 28.6863, 77.2217),

('Thapar Institute of Engineering and Technology', 'Patiala', 'Punjab', 'Patiala', 'Private University', ARRAY['Engineering', 'Technology', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 29, 29, '3,50,000 - 14,00,000', 1956, 'Deemed University', 'NAAC A+', '+91-175-239-3021', 'info@thapar.edu', 'https://www.thapar.edu', 30.3398, 76.3869),

('PES University', 'Bangalore South Campus', 'Karnataka', 'Bangalore', 'Private University', ARRAY['Engineering', 'Medicine', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 47, 47, '3,00,000 - 12,00,000', 1972, 'Private University', 'NAAC A++', '+91-80-2678-0820', 'info@pes.edu', 'https://www.pes.edu', 12.9352, 77.5329),

('R.V. College of Engineering', 'Mysore Road, Bangalore', 'Karnataka', 'Bangalore', 'Private College', ARRAY['Engineering', 'Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex', 'Wi-Fi'], 52, 52, '2,50,000 - 8,00,000', 1963, 'Autonomous', 'NAAC A++', '+91-80-6726-0678', 'info@rvce.edu.in', 'https://www.rvce.edu.in', 12.9246, 77.4987),

-- Medical Colleges
('Christian Medical College Vellore', 'Vellore', 'Tamil Nadu', 'Vellore', 'Medical College', ARRAY['Medicine', 'Nursing', 'Allied Health'], ARRAY['Hospital', 'Library', 'Hostel', 'Research Center'], 2, 2, '50,000 - 15,00,000', 1900, 'Deemed University', 'NAAC A++', '+91-416-228-2052', 'info@cmcvellore.ac.in', 'https://www.cmcvellore.ac.in', 12.9249, 79.1378),

('Armed Forces Medical College', 'Pune', 'Maharashtra', 'Pune', 'Medical College', ARRAY['Medicine'], ARRAY['Hospital', 'Library', 'Hostel', 'Laboratory'], 4, 4, '10,000 - 50,000', 1948, 'Deemed University', 'NAAC A++', '+91-20-2630-2204', 'info@afmc.nic.in', 'https://www.afmc.nic.in', 18.5108, 73.8536),

('King Georges Medical University', 'Lucknow', 'Uttar Pradesh', 'Lucknow', 'Medical College', ARRAY['Medicine', 'Nursing', 'Paramedical'], ARRAY['Hospital', 'Library', 'Hostel', 'Research Center'], 18, 18, '20,000 - 1,00,000', 1905, 'State University', 'NAAC A', '+91-522-225-8401', 'info@kgmcindia.edu', 'https://www.kgmcindia.edu', 26.8467, 80.9462),

-- Management Colleges
('Indian Institute of Management Ahmedabad', 'Vastrapur, Ahmedabad', 'Gujarat', 'Ahmedabad', 'Management Institute', ARRAY['Management', 'Business Administration'], ARRAY['Library', 'Hostel', 'Computer Center', 'Sports Complex'], 1, 1, '20,00,000 - 25,00,000', 1961, 'Autonomous', 'NAAC A++', '+91-79-6632-4000', 'info@iima.ac.in', 'https://www.iima.ac.in', 23.0367, 72.5169),

('Indian Institute of Management Bangalore', 'Bannerghatta Road, Bangalore', 'Karnataka', 'Bangalore', 'Management Institute', ARRAY['Management', 'Business Administration', 'Executive Education'], ARRAY['Library', 'Hostel', 'Computer Center', 'Sports Complex'], 3, 3, '20,00,000 - 24,00,000', 1973, 'Autonomous', 'NAAC A++', '+91-80-2699-3000', 'info@iimb.ac.in', 'https://www.iimb.ac.in', 12.8451, 77.6640),

('Indian Institute of Management Calcutta', 'Joka, Kolkata', 'West Bengal', 'Kolkata', 'Management Institute', ARRAY['Management', 'Business Administration'], ARRAY['Library', 'Hostel', 'Computer Center', 'Sports Complex'], 2, 2, '20,00,000 - 23,00,000', 1961, 'Autonomous', 'NAAC A++', '+91-33-2467-8300', 'info@iimcal.ac.in', 'https://www.iimcal.ac.in', 22.4697, 88.3627),

-- Law Colleges
('National Law School of India University', 'Bangalore', 'Karnataka', 'Bangalore', 'Law University', ARRAY['Law', 'Legal Studies'], ARRAY['Library', 'Hostel', 'Moot Court', 'Legal Aid Clinic'], 1, 1, '2,50,000 - 8,00,000', 1987, 'State University', 'NAAC A++', '+91-80-2321-7001', 'info@nls.ac.in', 'https://www.nls.ac.in', 13.0827, 77.5761),

('National Law University Delhi', 'Sector 14, Dwarka', 'Delhi', 'New Delhi', 'Law University', ARRAY['Law', 'Legal Studies'], ARRAY['Library', 'Hostel', 'Moot Court', 'Legal Aid Clinic'], 5, 5, '3,00,000 - 10,00,000', 2008, 'State University', 'NAAC A+', '+91-11-2877-8800', 'info@nludelhi.ac.in', 'https://www.nludelhi.ac.in', 28.5921, 77.0460),

-- State Engineering Colleges
('College of Engineering Pune', 'Shivajinagar, Pune', 'Maharashtra', 'Pune', 'Engineering College', ARRAY['Engineering', 'Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 33, 33, '1,20,000 - 4,00,000', 1854, 'Government', 'NAAC A+', '+91-20-2550-7001', 'info@coep.ac.in', 'https://www.coep.ac.in', 18.5301, 73.8567),

('Visvesvaraya National Institute of Technology', 'South Ambazari Road, Nagpur', 'Maharashtra', 'Nagpur', 'Engineering College', ARRAY['Engineering', 'Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 44, 44, '1,50,000 - 6,00,000', 1960, 'Government', 'NAAC A', '+91-712-280-1601', 'info@vnit.ac.in', 'https://www.vnit.ac.in', 21.1458, 79.0882),

('Maulana Azad National Institute of Technology', 'Link Road No. 3, Bhopal', 'Madhya Pradesh', 'Bhopal', 'Engineering College', ARRAY['Engineering', 'Technology', 'Architecture'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 65, 65, '1,50,000 - 6,00,000', 1960, 'Government', 'NAAC A', '+91-755-405-1000', 'info@manit.ac.in', 'https://www.manit.ac.in', 23.2599, 77.4126),

-- More Universities across different states
('Cochin University of Science and Technology', 'Kochi', 'Kerala', 'Kochi', 'State University', ARRAY['Engineering', 'Science', 'Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Marine Station'], 24, 24, '50,000 - 2,50,000', 1971, 'State University', 'NAAC A+', '+91-484-257-5804', 'info@cusat.ac.in', 'https://www.cusat.ac.in', 10.0458, 76.3192),

('Indian Statistical Institute', 'Barrackpore Trunk Road, Kolkata', 'West Bengal', 'Kolkata', 'Deemed University', ARRAY['Statistics', 'Mathematics', 'Computer Science'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 35, 35, '1,00,000 - 4,00,000', 1931, 'Deemed University', 'NAAC A++', '+91-33-2575-2001', 'info@isical.ac.in', 'https://www.isical.ac.in', 22.6668, 88.3918),

('Indian Institute of Science', 'CV Raman Avenue, Bangalore', 'Karnataka', 'Bangalore', 'Deemed University', ARRAY['Science', 'Engineering', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 1, 1, '50,000 - 3,00,000', 1909, 'Deemed University', 'NAAC A++', '+91-80-2293-2001', 'info@iisc.ac.in', 'https://www.iisc.ac.in', 13.0218, 77.5649),

('Jadavpur University', 'Raja S.C. Mallick Road, Kolkata', 'West Bengal', 'Kolkata', 'State University', ARRAY['Engineering', 'Arts', 'Science'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 12, 12, '25,000 - 1,50,000', 1955, 'State University', 'NAAC A++', '+91-33-2414-6666', 'info@jaduniv.edu.in', 'https://www.jaduniv.edu.in', 22.4991, 88.3712),

-- More colleges across various states
('Savitribai Phule Pune University', 'Ganeshkhind, Pune', 'Maharashtra', 'Pune', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Engineering', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 27, 27, '30,000 - 2,00,000', 1949, 'State University', 'NAAC A+', '+91-20-2569-4952', 'info@unipune.ac.in', 'https://www.unipune.ac.in', 18.5793, 73.8143),

('Gujarat University', 'University Road, Ahmedabad', 'Gujarat', 'Ahmedabad', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 56, 56, '20,000 - 1,20,000', 1949, 'State University', 'NAAC A', '+91-79-2630-6671', 'info@gujaratuniversity.ac.in', 'https://www.gujaratuniversity.ac.in', 23.0593, 72.5408),

('Rajasthan University', 'JLN Marg, Jaipur', 'Rajasthan', 'Jaipur', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 42, 42, '25,000 - 1,50,000', 1947, 'State University', 'NAAC A', '+91-141-270-6100', 'info@uniraj.ac.in', 'https://www.uniraj.ac.in', 26.9467, 75.8189),

('Andhra University', 'Waltair, Visakhapatnam', 'Andhra Pradesh', 'Visakhapatnam', 'State University', ARRAY['Engineering', 'Science', 'Arts', 'Commerce'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 28, 28, '30,000 - 2,00,000', 1926, 'State University', 'NAAC A+', '+91-891-279-2001', 'info@andhrauniversity.edu.in', 'https://www.andhrauniversity.edu.in', 17.7231, 83.3210),

('Panjab University', 'Sector 14, Chandigarh', 'Punjab', 'Chandigarh', 'Central University', ARRAY['Arts', 'Science', 'Engineering', 'Law', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 47, 47, '35,000 - 2,50,000', 1882, 'Central University', 'NAAC A+', '+91-172-253-4000', 'info@pu.ac.in', 'https://www.puchd.ac.in', 30.7590, 76.7694),

-- More Technical Institutes
('Indian Institute of Information Technology Allahabad', 'Jhalwa, Prayagraj', 'Uttar Pradesh', 'Prayagraj', 'Deemed University', ARRAY['Computer Science', 'Information Technology', 'Electronics'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 32, 32, '2,00,000 - 8,00,000', 1999, 'Deemed University', 'NAAC A+', '+91-532-292-7401', 'info@iiita.ac.in', 'https://www.iiita.ac.in', 25.4358, 81.7706),

('Dhirubhai Ambani Institute of Information and Communication Technology', 'Near Indroda Circle, Gandhinagar', 'Gujarat', 'Gandhinagar', 'Deemed University', ARRAY['Computer Science', 'Information Technology', 'Electronics'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 37, 37, '2,50,000 - 10,00,000', 2001, 'Deemed University', 'NAAC A+', '+91-79-3051-2222', 'info@daiict.ac.in', 'https://www.daiict.ac.in', 23.1885, 72.6317),

-- Agricultural Universities
('Indian Agricultural Research Institute', 'Pusa, New Delhi', 'Delhi', 'New Delhi', 'Deemed University', ARRAY['Agriculture', 'Horticulture', 'Agricultural Engineering'], ARRAY['Library', 'Hostel', 'Laboratory', 'Farm'], 1, 1, '20,000 - 1,00,000', 1905, 'Deemed University', 'NAAC A++', '+91-11-2584-2171', 'info@iari.res.in', 'https://www.iari.res.in', 28.6405, 77.1548),

('Tamil Nadu Agricultural University', 'Lawley Road, Coimbatore', 'Tamil Nadu', 'Coimbatore', 'State University', ARRAY['Agriculture', 'Horticulture', 'Veterinary Science'], ARRAY['Library', 'Hostel', 'Laboratory', 'Farm'], 3, 3, '25,000 - 1,50,000', 1971, 'State University', 'NAAC A+', '+91-422-661-1212', 'info@tnau.ac.in', 'https://www.tnau.ac.in', 11.0168, 76.9558),

-- Pharmacy Colleges
('Jamia Hamdard', 'Hamdard Nagar, New Delhi', 'Delhi', 'New Delhi', 'Deemed University', ARRAY['Pharmacy', 'Medicine', 'Nursing'], ARRAY['Library', 'Hostel', 'Laboratory', 'Hospital'], 4, 4, '1,50,000 - 8,00,000', 1989, 'Deemed University', 'NAAC A', '+91-11-2605-9688', 'info@jamiahamdard.edu', 'https://www.jamiahamdard.edu', 28.5355, 77.3082),

('National Institute of Pharmaceutical Education and Research', 'S.A.S. Nagar, Mohali', 'Punjab', 'Mohali', 'Deemed University', ARRAY['Pharmacy', 'Pharmaceutical Sciences'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 2, 2, '50,000 - 3,00,000', 1998, 'Deemed University', 'NAAC A++', '+91-172-292-9000', 'info@niper.ac.in', 'https://www.niper.ac.in', 30.7590, 76.7694),

-- Arts and Design Colleges
('National Institute of Design', 'Paldi, Ahmedabad', 'Gujarat', 'Ahmedabad', 'Deemed University', ARRAY['Design', 'Animation', 'Fashion Design'], ARRAY['Library', 'Hostel', 'Studio', 'Workshop'], 1, 1, '3,50,000 - 12,00,000', 1961, 'Deemed University', 'NAAC A++', '+91-79-2662-9692', 'info@nid.edu', 'https://www.nid.edu', 23.0188, 72.5683),

('Srishti Manipal Institute of Art Design and Technology', 'Yelahanka, Bangalore', 'Karnataka', 'Bangalore', 'Private Institute', ARRAY['Art', 'Design', 'Media', 'Liberal Arts'], ARRAY['Library', 'Hostel', 'Studio', 'Workshop'], 15, 15, '4,00,000 - 15,00,000', 1996, 'Private Institute', 'NAAC A', '+91-80-2371-5000', 'info@srishti.ac.in', 'https://www.srishti.ac.in', 13.1358, 77.6044),

-- Journalism and Mass Communication
('Indian Institute of Mass Communication', 'JNU New Campus, New Delhi', 'Delhi', 'New Delhi', 'Deemed University', ARRAY['Journalism', 'Mass Communication', 'Advertising'], ARRAY['Library', 'Hostel', 'Studio', 'Radio Station'], 1, 1, '2,00,000 - 6,00,000', 1965, 'Deemed University', 'NAAC A+', '+91-11-2670-4741', 'info@iimc.gov.in', 'https://www.iimc.gov.in', 28.5385, 77.1658),

('Symbiosis Institute of Media and Communication', 'Lavale, Pune', 'Maharashtra', 'Pune', 'Private Institute', ARRAY['Journalism', 'Mass Communication', 'Film Making'], ARRAY['Library', 'Hostel', 'Studio', 'Equipment'], 5, 5, '4,50,000 - 12,00,000', 2005, 'Private Institute', 'NAAC A', '+91-20-3982-8000', 'info@simc.edu', 'https://www.simc.edu', 18.5641, 73.7150),

-- More State Universities
('Kerala University', 'Palayam, Thiruvananthapuram', 'Kerala', 'Thiruvananthapuram', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 43, 43, '15,000 - 80,000', 1937, 'State University', 'NAAC A', '+91-471-230-5801', 'info@keralauniversity.ac.in', 'https://www.keralauniversity.ac.in', 8.5241, 76.9366),

('Madras University', 'Chepauk, Chennai', 'Tamil Nadu', 'Chennai', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 45, 45, '20,000 - 1,20,000', 1857, 'State University', 'NAAC A', '+91-44-2844-4555', 'info@unom.ac.in', 'https://www.unom.ac.in', 13.0878, 80.2785),

('Mysore University', 'Manasagangotri, Mysore', 'Karnataka', 'Mysore', 'State University', ARRAY['Arts', 'Science', 'Commerce', 'Education'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 50, 50, '18,000 - 1,00,000', 1916, 'State University', 'NAAC A+', '+91-821-241-9411', 'info@uni-mysore.ac.in', 'https://www.uni-mysore.ac.in', 12.3051, 76.6553),

-- More Private Engineering Colleges
('SRM Institute of Science and Technology', 'Kattankulathur, Chennai', 'Tamil Nadu', 'Chennai', 'Private University', ARRAY['Engineering', 'Medicine', 'Management'], ARRAY['Library', 'Hostel', 'Laboratory', 'Hospital'], 41, 41, '2,50,000 - 15,00,000', 1985, 'Deemed University', 'NAAC A++', '+91-44-2741-9999', 'info@srmist.edu.in', 'https://www.srmist.edu.in', 12.8230, 80.0434),

('Kalinga Institute of Industrial Technology', 'Bhubaneswar', 'Odisha', 'Bhubaneswar', 'Private University', ARRAY['Engineering', 'Medicine', 'Management', 'Law'], ARRAY['Library', 'Hostel', 'Laboratory', 'Hospital'], 24, 24, '3,00,000 - 18,00,000', 1992, 'Deemed University', 'NAAC A+', '+91-674-272-5466', 'info@kiit.ac.in', 'https://www.kiit.ac.in', 20.3571, 85.8245),

('Lovely Professional University', 'Phagwara', 'Punjab', 'Phagwara', 'Private University', ARRAY['Engineering', 'Management', 'Design', 'Agriculture'], ARRAY['Library', 'Hostel', 'Laboratory', 'Sports Complex'], 85, 85, '1,50,000 - 8,00,000', 2005, 'Private University', 'NAAC A+', '+91-1824-517-000', 'info@lpu.co.in', 'https://www.lpu.in', 31.2340, 75.4057),

-- More Medical Colleges
('Kasturba Medical College', 'Manipal', 'Karnataka', 'Manipal', 'Private Medical College', ARRAY['Medicine', 'Dentistry', 'Nursing'], ARRAY['Hospital', 'Library', 'Hostel', 'Research Center'], 9, 9, '15,00,000 - 25,00,000', 1953, 'Deemed University', 'NAAC A++', '+91-820-292-1201', 'info@manipal.edu', 'https://www.manipal.edu', 13.3409, 74.7421),

('St. Johns Medical College', 'Sarjapur Road, Bangalore', 'Karnataka', 'Bangalore', 'Private Medical College', ARRAY['Medicine', 'Nursing'], ARRAY['Hospital', 'Library', 'Hostel', 'Research Center'], 12, 12, '8,00,000 - 20,00,000', 1963, 'Deemed University', 'NAAC A', '+91-80-4955-5555', 'info@sjri.res.in', 'https://www.sjri.res.in', 12.8697, 77.6475),

-- More Management Institutes
('XLRI Xavier School of Management', 'C.H. Area (East), Jamshedpur', 'Jharkhand', 'Jamshedpur', 'Private Management Institute', ARRAY['Management', 'Business Administration'], ARRAY['Library', 'Hostel', 'Computer Center'], 7, 7, '20,00,000 - 25,00,000', 1949, 'Deemed University', 'NAAC A', '+91-657-398-3333', 'info@xlri.ac.in', 'https://www.xlri.ac.in', 22.7925, 86.1842),

('Indian Institute of Management Kozhikode', 'IIMK Campus, Kozhikode', 'Kerala', 'Kozhikode', 'Management Institute', ARRAY['Management', 'Business Administration'], ARRAY['Library', 'Hostel', 'Computer Center'], 5, 5, '18,00,000 - 22,00,000', 1996, 'Autonomous', 'NAAC A++', '+91-495-280-9200', 'info@iimk.ac.in', 'https://www.iimk.ac.in', 11.4102, 75.8399),

-- Technology Focused Institutes
('International Institute of Information Technology Hyderabad', 'Gachibowli, Hyderabad', 'Telangana', 'Hyderabad', 'Deemed University', ARRAY['Computer Science', 'Electronics', 'Information Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 31, 31, '3,00,000 - 12,00,000', 1998, 'Deemed University', 'NAAC A++', '+91-40-6653-1000', 'info@iiit.ac.in', 'https://www.iiit.ac.in', 17.4453, 78.3489),

('International Institute of Information Technology Bangalore', 'Electronic City, Bangalore', 'Karnataka', 'Bangalore', 'Private Institute', ARRAY['Computer Science', 'Electronics', 'Information Technology'], ARRAY['Library', 'Hostel', 'Laboratory', 'Research Center'], 35, 35, '3,50,000 - 14,00,000', 1999, 'Private Institute', 'NAAC A+', '+91-80-2852-8000', 'info@iiitb.ac.in', 'https://www.iiitb.ac.in', 12.8451, 77.6640),

-- Liberal Arts Colleges
('Ashoka University', 'Rajiv Gandhi Education City, Sonepat', 'Haryana', 'Sonepat', 'Private University', ARRAY['Liberal Arts', 'Economics', 'Political Science', 'Computer Science'], ARRAY['Library', 'Hostel', 'Sports Complex', 'Research Center'], 2, 2, '8,00,000 - 25,00,000', 2014, 'Private University', 'NAAC A', '+91-130-237-3700', 'info@ashoka.edu.in', 'https://www.ashoka.edu.in', 28.9931, 77.0807),

('Jindal Global University', 'Jindal Global City, Sonepat', 'Haryana', 'Sonepat', 'Private University', ARRAY['Law', 'Management', 'Liberal Arts', 'International Affairs'], ARRAY['Library', 'Hostel', 'Moot Court', 'Sports Complex'], 3, 3, '6,00,000 - 20,00,000', 2009, 'Private University', 'NAAC A', '+91-130-403-0800', 'info@jgu.edu.in', 'https://www.jgu.edu.in', 28.9931, 77.0807);