use application;

-- student table data
insert into `application`.`student`(first_name, last_name, gender, birthdate, marriage_status, phone_number, email_address, username, password, profile_picture, hobbies, books_movies_music, description)
values
("Lirim", "Rexhepi", "M", "1990-05-15", "Married", "+1234567890", "lirim@example.com", "lirimRex90", "5d2e19393cc5a0310c49c5b460b4f3f61b0634ab189ab778de253282ba82c6ad", "profile_picture_1.jpg", "Hiking, Photography", "The Innovators by Walter Isaacson, Inception, Imagine Dragons - Night Visions", "Passionate about innovation and exploration."),
("Albiona", "Berisha", "F", "1985-08-20", "Single", "+1987654321", "albiona@example.com", "albionaB", "2e2a0cc1d178b6348e9354fe1db7965e15d4d7f51cc321f534e4ee7b35eac623", "profile_picture_2.jpg", "Reading, Painting", "To Kill a Mockingbird, The Shawshank Redemption, Adele - 21", "Dedicated to shaping young minds through creativity."),
("Dardan", "Gashi", "M", "1978-03-10", "Divorced", "+9876543210", "dardan@example.com", "dardanG78", "bfc1f66c583c12d5595c3d81e3ee95d07a1b1f0d17e660fb534c243ad76752f0", "profile_picture_3.jpg", "Cooking, Fishing", "The Intelligent Investor by Benjamin Graham, The Godfather, Pink Floyd - Dark Side of the Moon", "Detail-oriented numbers enthusiast and nature lover."),
("Vjosa", "Ahmeti", "F", "1995-11-28", "Single", "+1122334455", "vjosa@example.com", "vjosaA95", "ac9d1e45b2e029bd27c8b9d6ab1d35a31a5f96c6923ad5fbbf28e6a33a66ee1d", "profile_picture_4.jpg", "Gaming, Yoga", "The Alchemist by Paulo Coelho, Inglourious Basterds, Lana Del Rey - Born to Die", "Bringing imagination to life through design."),
("Arben", "Jashari", "M", "1983-09-12", "Married", "+5544332211", "arben@example.com", "arbenJ83", "7d9903a0e9a7001e5d16064ab54cc80268b2a7a7a6c26a42e8cf0a15560c57a3", "profile_picture_5.jpg", "Running, Playing guitar", "Crime and Punishment by Fyodor Dostoevsky, The Beatles - A Hard Day's Night, Beethoven", "Healing with care and strumming melodies."),
("Dafina", "Krasniqi", "F", "1992-06-25", "Single", "+6677889900", "dafina@example.com", "dafinaK", "729c52fb14ffef860fd3da4db1de4c888b8c7c9c0fc9c1bda84edbe6a6de75a9", "profile_picture_6.jpg", "Traveling, Dancing", "The Great Gatsby by F. Scott Fitzgerald, La La Land, Michael Jackson - Thriller", "Coding, exploring, and dancing my way through life."),
("Burim", "Hoxha", "M", "1975-12-03", "Married", "+2233445566", "burim@example.com", "burimH75", "b9a2e6cc5e4870d1b0e940f378d4c09861cb2b8c46bbf90a53ed4eb69962d670", "profile_picture_7.jpg", "Playing Tennis, Reading", "To Kill a Mockingbird, The Shawshank Redemption, Mozart", "Fighting for justice and enjoying a good book."),
("Aurela", "Aliu", "F", "1998-04-17", "Single", "+7788990011", "aurela@example.com", "aurelaA", "7b9ab9d44a9f1175ba0c4a4e6cb5d0c31f7eb7b32c7e7f5f8018a2fe1db8a84c", "profile_picture_8.jpg", "Traveling, Photography", "Thinking, Fast and Slow by Daniel Kahneman, The Dark Knight, Ed Sheeran - ÷", "Marketing maven with an eye for capturing moments."),
("Blerim", "Krasniqi", "M", "1980-07-08", "Divorced", "+9900887766", "blerim@example.com", "blerimK80", "cb9f1d1b42932a86e8f741128822b041f45b89f18d9e739b5db40d3c73f6b7e1", "profile_picture_9.jpg", "Gardening, Cooking", "The Secret Garden by Frances Hodgson Burnett, Ratatouille, Coldplay - A Head Full of Dreams", "Creating spaces and flavors that inspire."),
("Vesa", "Qorri", "F", "1993-02-22", "Single", "+1122334455", "vesa@example.com", "vesaQ", "c3c68b99bebf3899dbb4967e0f99c4ac3842017e9a8e2e3dbf8b97f07910b183", "profile_picture_10.jpg", "Hiking, Writing poetry", "Into the Wild by Jon Krakauer, Interstellar, Ludovico Einaudi", "Crafting stories amidst serene trails and verses.");


-- education table data
insert into `application`.`education`(student_id, institution_name, field_of_study, start_date, end_date, diploma_file, degree, study_area, mentor)
values
(4, "University of Prishtina", "Computer Science", 2018, 2022, "Lirim_Rexhepi.diploma.pdf", "Bachelor's Degree", "Computer Science", "Prof. Gashi, Research in Machine Learning"),
(3, "University of Prishtina", "Electrical Engineering", 2017, 2021, "Albiona_Berisha.diploma.pdf", "Bachelor's Degree", "Electrical Engineering", "Dr. Luta, Thesis on Power Systems"),
(2, "UBT", "Business Administration", 2019, 2023, "Dardan_Gashi.diploma.pdf", "Bachelor's Degree", "Business Administration", "Dr. Rexhepi, Internship at Local Business"),
(5, "University of Prishtina", "Psychology", 2016, 2020, "Vjosa_Ahmeti.diploma.pdf", "Master's Degree", "Psychology", "Prof. Kelmendi, Research in Behavioral Psychology"),
(1, "University of Prishtina", "Mechanical Engineering", 2020, 2022, "Arben_Jashari.diploma.pdf", "Bachelor's Degree", "Mechanical Engineering", "Dr. Gashi, Design and Analysis of Mechanical Systems"),
(7, "AAB University", "Environmental Science", 2018, 2021, "Dafina_Krasniqi.diploma.pdf", "Bachelor's Degree", "Environmental Science", "Prof. Sylejmani, Field Research on Ecology"),
(5, "UBT", "Chemistry", 2017, 2023, "Burim_Hoxha.diploma.pdf", "Master's Degree", "Chemistry", "Dr. Loku, Laboratory Research on Organic Chemistry"),
(10, "University of Prishtina", "Physics", 2019, 2023, "Aurela_Aliu.diploma.pdf", "Bachelor's Degree", "Sociology", "Prof. Halimi, Study on Social Dynamics in Urban Settings"),
(9, "University of Prishtina", "Political Science", 2016, 2022, "Blerim_Krasniqi.diploma.pdf", "Master's Degree", "Political Science", "Dr. Hasani, Internship at Governmental Institute"),
(8, "AAB University", "Sociology", 2019, 2023, "Vesa_Qorri.diploma.pdf", "Master's Degree", "Physics", "Prof. Maliqi, Thesis on Quantum Mechanics");


-- experience table data
insert into `application`.`experience`(student_id, title, company_name, location, start_date, end_date, additional_info)
values
(4, "Junior Front-End Developer", "Gjirafa Inc.", "Remote", "2019-09-15", "2021-06-30", "Worked on developing responsive and user-friendly interfaces for web applications. Collaborated with the team to implement new features and enhance overall user experience."),
(4, "Senior Front-End Developer", "Gjirafa Inc.", "Prishtinë", "2021-07-01", "2023-11-30", "Led front-end development projects, mentored junior developers, and contributed to architectural decisions. Implemented best practices for code quality and performance optimization."),
(10, "Software Developer", "Tech Innovations Ltd.", "Prishtinë", "2022-03-15", "2022-08-15", "Developed software solutions to meet client requirements, participated in agile development cycles, and collaborated with cross-functional teams to deliver high-quality products."),
(5, "Marketing Intern", "Digital Marketing Agency", "Prishtinë", "2022-05-01", "2022-10-01", "Assisted in creating social media content, conducted market research, and supported the marketing team in planning and executing various campaigns."),
(1, "Data Analyst", "Data Analytics Inc.", "Ferizaj", "2022-02-10", "2022-07-10", "Performed data analysis and visualization, interpreted results, and provided actionable insights. Collaborated with stakeholders to understand data requirements and improve decision-making processes."),
(10, "Graphic Designer", "Creative Designs Studio", "Remote", "2022-04-20", "2022-09-20", "Designed visually appealing graphics for digital and print media. Collaborated with clients to understand design requirements and delivered creative solutions."),
(3, "Research Assistant", "Science Research Institute", "Pejë", "2022-01-15", "2022-06-15", "Conducted literature reviews, collected and analyzed research data, and assisted in writing research papers. Collaborated with the research team to contribute to ongoing projects."),
(2, "Human Resources Coordinator", "Corporate Solutions Ltd.", "Prishtinë", "2022-06-05", "2022-11-05", "Managed recruitment processes, coordinated employee onboarding, and facilitated HR-related activities. Provided support in maintaining a positive work environment."),
(8, "IT Support Specialist", "IT Solutions Corp.", "Mitrovicë", "2022-03-01", "2022-08-01", "Provided technical support to end-users, diagnosed and resolved hardware and software issues, and ensured the smooth operation of IT systems."),
(9, "Finance Intern", "Financial Services Group", "Ferizaj", "2022-07-10", "2022-12-10", "Assisted in financial analysis, prepared reports, and participated in budgeting processes. Gained practical experience in various aspects of financial management.");


-- project table data
insert into `application`.`project`(student_id, project_name, start_date, end_date, institution_name, location, description, role, web_page)
values
(2, "Campus Sustainability Initiative", "2022-03-01", "2022-06-30", "University of Prishtina, Faculty of Environmental Science", "Prishtina, Kosovo", "Implemented a comprehensive sustainability project on campus, including waste reduction measures, energy-efficient initiatives, and awareness campaigns to promote eco-friendly practices.",  "Junior Software Developer", "www.xyz-ecommerce.com"),
(4, "E-commerce Platform Development", "2022-09-15", "2022-12-20", "XYZ Tech Solutions, Company", "Prishtina, Kosovo", "Collaborated on the development of a robust e-commerce platform, incorporating secure payment gateways, inventory management, and user-friendly interfaces to enhance the online shopping experience.", "Junior Software Developer", "www.xyz-ecommerce.com"),
(1, "Community Health Outreach Program", "2023-01-10", "2023-04-30", "University of Prishtina, Faculty of Medicine", "Rural Health Clinics, Kosovo", "Executed a health outreach program in rural areas, providing medical services, health education workshops, and distributing essential healthcare resources to underserved communities.", "Medical Student Volunteer", null),
(3, "Renewable Energy Research Project", "2023-04-01", "2023-08-31", "Kosovo Energy Research Institute, Research Center", "Prishtina, Kosovo", "Conducted research on the feasibility of implementing renewable energy sources in Kosovo, analyzing solar and wind potential, and proposing sustainable energy solutions for the region.", "Research Assistant", "www.keri-research.org,"),
(2, "Language Learning App Development", "2022-06-01", "2022-09-30", "University of Prishtina, Faculty of Philology", "Prishtina, Kosovo", "Led the development of a language learning app, incorporating interactive lessons, quizzes, and pronunciation exercises to facilitate language acquisition for users.", "Project Manager", "www.language-master-app.com"),
(4, "Cybersecurity Awareness Campaign", "2022-10-15", "2022-12-15", "University of Prishtina, Faculty of Computer Science",  "Prishtina, Kosovo", "Launched an awareness campaign on campus to educate students and faculty about cybersecurity threats, best practices, and the importance of maintaining digital privacy.",  "Cybersecurity Advocate", null),
(5, "Urban Planning and Development Project", "2023-01-05", "2023-05-31", "Municipality of Prishtina, Urban Planning Department", "Prishtina, Kosovo", "Contributed to an urban planning initiative, conducting research on sustainable city development, proposing zoning regulations, and collaborating with architects to design innovative urban spaces.", "Urban Planning Intern", "www.prishtina-urban-planning.org"),
(1, "Mobile Health Clinic Implementation",  "2023-02-10", "2023-06-30", "Ministry of Health", "Government of Kosovo Rural and Underserved Areas, Kosovo", "Coordinated the implementation of a mobile health clinic to provide essential medical services, vaccinations, and health consultations in remote areas with limited access to healthcare facilities.", "Health Outreach Coordinator", null),
(10, "Cultural Heritage Preservation Project", "2023-03-15", "2023-08-15", "National Museum of Kosovo, Conservation Department", "Prishtina, Kosovo", "Engaged in the preservation and restoration of cultural artifacts, implementing conservation techniques to safeguard the rich cultural heritage of Kosovo.", "Conservation Intern", "www.nationalmuseum-kosovo.org"),
(9, "Financial Literacy Workshop Series", "2023-04-05", "2023-07-15", "University of Prishtina, Faculty of Economics", "Prishtina, Kosovo", "Organized a series of workshops and seminars to enhance financial literacy among students, covering topics such as budgeting, investment strategies, and financial planning for the future.", "Workshop Coordinator", null);


-- company table data
insert into `application`.`company`(company_name, logo, description, email_address, web_page, employee_count, company_type, established_year, map_location)
values
("TechKosova", "techkosova_logo.png", "Leading technology solutions provider in Kosovo", "info@techkosova.com", "www.techkosova.com", 150, "Information Technology", 2010,"https://www.google.com/maps/place/Pristina"),
("Kosovo Manufacturing Co.", "kosman_logo.jpg", "Manufacturing and distribution services based in Kosovo", "contact@kosman.com", "www.kosman.com", 500, "Manufacturing", 1995,"https://www.google.com/maps/place/Peja"),
("Innovate Kosovo", "innovatekosova_logo.png", "Innovative technology solutions provider located in Kosovo", "info@innovatekosova.com", "www.innovatekosova.com", 150, "Technology", 2008,"https://www.google.com/maps/place/Gjilan"),
("Global Logistics Kosovo", "globalkosova_logo.png", "Global logistics and supply chain services in Kosovo", "info@globalkosova.com", "www.globalkosova.com", 300, "Logistics", 2020, "https://www.google.com/maps/place/Mitrovica"),
("Eco-Friendly Solutions Kosovo", "ecofriendlykosova_logo.jpg", "Sustainable and eco-friendly products based in Kosovo", "contact@ecofriendlykosova.com", "www.ecofriendlykosova.com", 75, "Environmental", 2015, "https://www.google.com/maps/place/Ferizaj"),
("HealthFirst Kosovo", "healthfirstkosova_logo.png", "Health and wellness products and services in Kosovo", "info@healthfirstkosova.com", "www.healthfirstkosova.com", 100, "Healthcare", 2012, "https://www.google.com/maps/place/Prizren"),
("Data Dynamics Kosovo", "datadynamicskosova_logo.png", "Data analytics and business intelligence in Kosovo", "info@datadynamicskosova.com", "www.datadynamicskosova.com", 250, "Analytics", 2007, "https://www.google.com/maps/place/Peja"),
("Creative Designs Kosovo", "creativedesignskosova_logo.jpg", "Creative design and branding agency based in Kosovo", "contact@creativedesignskosova.com", "www.creativedesignskosova.com", 50, "Design", 2018, "https://www.google.com/maps/place/Gjilan"),
("Alpha Energy Kosovo", "alphaenergykosova_logo.png", "Renewable energy solutions and services in Kosovo", "info@alphaenergykosova.com", "www.alphaenergykosova.com", 120, "Energy", 2014, "https://www.google.com/maps/place/Pristina"),
("Tech Innovators Kosovo", "techinnovatorskosova_logo.png", "Cutting-edge technology innovations in Kosovo", "contact@techinnovatorskosova.com", "www.techinnovatorskosova.com", 180, "Technology", 2005, "https://www.google.com/maps/place/Prizren");


-- address table data
insert into `application`.`address`(student_id, company_id, street_name, city, country, zip_code)
values
(1, null, "2 UCK", "Prishtina", "Kosovo", "10000"),
(2, null, "18 Adem Jashari", "Gjakova", "Kosovo", "50000"),
(3, null, "54 Hasan Prishtina", "Peja", "Kosovo", "30000"),
(4, null, "13 Emin Duraku", "Prizren", "Kosovo", "20000"),
(5, null, "32 Bajram Kelmendi", "Ferizaj", "Kosovo", "70000"),
(6, null, "19 Trepça", "Mitrovica", "Kosovo", "40000"),
(7, null, "84 Rruga B", "Prishtina", "Kosovo", "10000"),
(8, null, "93 Eqrem Qabej", "Prishtina", "Kosovo", "10000"),
(9, null, "47 Xhemajl Rexha", "Prizren", "Kosovo", "20000"),
(10, null, "24 Eshref Frashëri", "Peja", "Kosovo", "30000"),
(null, 1, "123 Teknologjia Street", "Prishtina", "Kosovo",  "10000"),
(null, 2, "456 Industry Lane", "Peja", "Kosovo", "30000"),
(null, 3, "789 Innovation Road", "Gjilan", "Kosovo", "80000"),
(null, 4, "101 Logistics Avenue", "Mitrovica", "Kosovo", "40000"),
(null, 5, "222 Green Street", "Ferizaj", "Kosovo", "50000"),
(null, 6, "333 Wellness Avenue", "Prizren", "Kosovo", "20000"),
(null, 7, "444 Data Street", "Peja", "Kosovo", "70000"),
(null, 8, "555 Creativity Lane", "Gjilan", "Kosovo", "80000"),
(null, 9, "666 Renewable Road", "Prishtina", "Kosovo", "10000"),
(null, 10, "777 Innovation Street", "Prizren", "Kosovo", "20000");

-- post table data
insert into `application`.`post`(company_id, title, description, required_skills, desired_skills, job_type, location, posted_at, application_deadline, like_count)
values
(1, "Software Developer", "We are seeking a skilled Software Developer to join our dynamic team. The ideal candidate will have a strong background in software development and be proficient in multiple programming languages.", "Proficiency in Java and Python, Experience with web development (HTML, CSS, JavaScript), Knowledge of database systems (SQL, MongoDB)", "Familiarity with cloud computing platforms (AWS, Azure), Mobile app development experience (iOS, Android)", "Full-time", "Prishtinë", "2022-03-01 09:30", "2022-03-31", 684),
(3, "Marketing Coordinator", "We are looking for a detail-oriented and creative Marketing Coordinator to support our marketing team. The ideal candidate will have experience in social media management, content creation, and event coordination.", "Social media management, Content creation (copywriting, graphic design), Event coordination", "Familiarity with marketing analytics tools, Experience with email marketing campaigns", "Part-time", "Ferizaj", "2022-04-01 15:45", "2022-04-30", 237),
(7, "Data Scientist", "We are seeking a talented Data Scientist to analyze and interpret complex data sets. The ideal candidate should have a strong background in statistical analysis, machine learning, and data visualization.", "Proficiency in programming languages such as Python or R, Statistical analysis and hypothesis testing, Machine learning techniques", "Experience with big data technologies (Hadoop, Spark), Knowledge of natural language processing (NLP)", "Full-time", "Prishtinë", "2022-05-10 12:00", "2022-06-10", 811),
(6, "Customer Support Specialist", "We are looking for a Customer Support Specialist to assist customers with product-related inquiries and provide exceptional service. The ideal candidate should have strong communication skills and a customer-centric approach.", "Excellent verbal and written communication, Problem-solving skills, Patience and empathy", "Experience with helpdesk software, Knowledge of the product or industry", "Full-time", "Prishtinë", "2022-07-05 10:15", "2022-08-05", 492),
(9, "Project Manager", "We are seeking an experienced Project Manager to lead cross-functional teams and deliver successful projects. The ideal candidate should have strong organizational and leadership skills.", "Project management experience, Excellent organizational and time-management skills, Leadership and team management", "PMP or Prince2 certification, Knowledge of agile methodologies", "Full-time", "Pejë", "2022-08-20 14:45", "2022-09-20", 156),
(8, "Graphic Designer", "We are looking for a creative Graphic Designer to produce visual content for various platforms. The ideal candidate should have a strong portfolio and be proficient in graphic design software.", "Proficiency in Adobe Creative Suite (Photoshop, Illustrator, InDesign), Strong design and layout skills, Attention to detail", "Animation and video editing skills, Knowledge of UX/UI design principles", "Full-time", "Remote", "2022-09-08 08:30", "2022-10-08", 739),
(4, "Financial Analyst", "We are seeking a detail-oriented Financial Analyst to support our finance team. The ideal candidate should have strong analytical skills and a solid understanding of financial principles.", "Financial modeling and analysis, Proficiency in Microsoft Excel, Attention to detail", "Experience with financial software (e.g., SAP, Oracle), CPA or CFA certification", "Full-time", "Prishtinë", "2022-10-15 17:00", "2022-11-15", 28),
(10, "Human Resources Specialist", "We are looking for an HR Specialist to support various HR functions, including recruitment, onboarding, and employee relations. The ideal candidate should have strong interpersonal skills and knowledge of HR best practices.", "Recruitment and onboarding experience, Strong interpersonal and communication skills, Knowledge of employment laws and regulations", "HR certification (PHR, SHRM-CP), Experience with HRIS", "Internship", "Pejë", "2022-11-03 11:20", "2022-12-03", 953),
(1, "Network Engineer", "We are seeking a skilled Network Engineer to design, implement, and maintain our company's network infrastructure. The ideal candidate should have strong knowledge of networking protocols and security measures.", "CCNA or equivalent certification, Experience with network design and implementation, Knowledge of security protocols (Firewalls, VPNs)", "Familiarity with cloud networking (AWS, Azure), Experience with SD-WAN technologies", "Full-time", "Prishtinë", "2022-12-18 13:45", "2023-01-18", 365),
(8, "Content Writer", "We are seeking a creative Content Writer to produce engaging and informative content across various platforms. The ideal candidate should have a strong command of the English language and a flair for storytelling.", "Exceptional writing and editing skills, Proficiency in grammar and style guidelines, Ability to research and create content on diverse topics", "Experience with SEO and keyword optimization, Familiarity with content management systems (CMS)", "Part-time", "Mitrovicë", "2022-11-15 16:10", "2022-12-15", 607);


-- comment table data
insert into `application`.`comment`(post_id, student_id, content, commented_at, like_count)
values
(1, 5, "This post on job interviews is too basic. Everyone knows you should dress well and be confident. Nothing groundbreaking here.", "2023-02-02 14:30", 221),
(2, 2, "The post about overcoming job search burnout really resonated with me. It's tough out there, and these strategies are a breath of fresh air. Great advice!", "2023-06-24 10:45", 120),
(3, 3, "Soft skills? Seriously? I just want a job that pays well. This touchy-feely stuff won't put food on the table.", "2022-12-12 16:20", 50),
(4, 4, "Remote work pros and cons are well-balanced. This helps individuals make informed decisions about whether remote work is the right fit for them. Great perspective!", "2022-09-29 09:15", 3),
(5, 5, "The post on overcoming job search burnout is just a list of generic motivational quotes. Not helpful at all. Waste of time reading this.", "2023-10-19 11:50", 112),
(6, 6, "Remote work is just an excuse for people to slack off. This post is overly optimistic about the benefits. It's not all rainbows and butterflies.", "2023-05-01 08:30", 8),
(7, 7, "The strategies mentioned here are practical and realistic. It's comforting to know that others have faced job search burnout and found effective ways to overcome it. Solid advice!", "2022-04-23 14:10", 76),
(8, 8, "The gig economy is a disaster. This post makes it sound like it's all sunshine and rainbows. Freelancers struggle with job insecurity and unstable income. This post is misleading.", "2023-03-28 13:25", 232),
(9, 9, "Emphasizing the importance of continuous learning is spot-on. This post motivates me to invest in my skills for long-term career growth. Great insights!", "2022-10-10 17:40", 13),
(10, 10, "Work-life balance is a luxury for the privileged. Not everyone can afford to balance when they're struggling to make ends meet. This post is out of touch with reality.", "2023-12-12 15:15", 23);


-- repost table data
insert into `application`.`repost`(post_id, student_id, content, reposted_at, like_count)
values
(1, 5, null, "2023-02-02 11:45", 127),
(2, 2, null, "2023-06-24 14:20", 289),
(10, 6, "Hey creative minds! I just came across this incredible Graphic Designer position at Creative Designs Kosovo and had to share it with you. If you're a talented designer looking for a new challenge, this could be your next big move!", "2022-12-12 09:30", 73),
(4, 4, null, "2022-09-29 16:10", 215),
(2, 3, null, "2023-10-19 12:55", 58),
(6, 6, null, "2023-05-01 08:15", 198),
(7, 10, null, "2022-04-23 13:40", 104),
(4, 6, null, "2023-03-28 10:05", 276),
(9, 9, null, "2022-10-10 14:25", 35),
(8, 6, null, "2023-12-12 15:40", 149);


-- like table data
insert into `application`.`like`(student_id, post_id, repost_id, comment_id)
values
(2, null, null, 3),
(7, 2, null, null),
(9, null, 7, null),
(3, null, null, 2),
(1, 2, null, null),
(3, null, null, 4),
(5, 6, null, null),
(5, 8, null, null),
(7, null, 10, null),
(10, 3, null, null);


-- volunteering table data
insert into `application`.`volunteering`(student_id, position, company_name, start_date, end_date)
values
(10, 'Volunteer Coordinator', 'Future Hope Kosovo', '2023-01-15', '2023-06-30'),
(7, 'Event Assistant', 'Unity Community Center Pristina', '2023-02-10', '2023-05-20'),
(2, 'Community Outreach Specialist', 'Kosova Food Bank', '2023-03-05', '2023-09-15'),
(1, 'Mentorship Program Manager', 'Progress Education Foundation Kosovo', '2023-04-20', '2023-11-30'),
(3, 'Fundraising Coordinator', 'Animal Rescue Kosovo', '2023-05-12', '2023-08-25'),
(4, 'Marketing Volunteer', 'Health First Clinic Prizren', '2023-06-08', '2023-12-10'),
(6, 'Research Assistant', 'Environmental Protection Institute Kosovo', '2023-07-01', '2023-10-18'),
(5, 'Volunteer Trainer', 'Red Cross Kosovo', '2023-08-14', '2024-01-05'),
(8, 'Social Media Manager', 'Youth Empowerment Center Gjilan', '2023-09-19', '2024-02-20'),
(9, 'Administrative Support', 'Elderly Care Foundation Pristina', '2023-10-22', '2024-03-15');


-- professional skills data
insert into `application`.`skill`(student_id, skill_name)
values
(5, 'Java Programming'),
(2, 'Data Analysis'),
(8, 'Graphic Design'),
(10, 'Machine Learning'),
(3, 'Web Development'),
(1, 'Project Management'),
(6, 'Digital Marketing'),
(9, 'Mobile App Development'),
(4, 'Content Writing'),
(7, 'Database Management'),
(5, 'C++ Programming'),
(10, 'Network Administration'),
(2, 'UI/UX Design'),
(9, 'Statistical Analysis'),
(1, 'Cloud Computing'),
(8, 'Social Media Management'),
(3, 'SEO Optimization'),
(6, 'Financial Modeling'),
(7, 'Creative Writing'),
(4, 'Customer Service');


-- saved_post table data
insert into `application`.`saved_post`(post_id, student_id)
values
(10, 3),
(7, 9),
(2, 7),
(1, 2),
(3, 2),
(4, 10),
(6, 5),
(5, 8),
(8, 1),
(9, 3);


-- applied table data
insert into `application`.`applied`(student_id, post_id, resume, applied_at)
values
(2, 1, "resume_1.pdf", "2022-03-11 08:45"),
(3, 1, "resume_2.pdf", "2022-03-05 15:20"),
(5, 9, "resume_3.pdf", "2022-06-08 12:30"),
(5, 10, "resume_4.pdf", "2022-08-01 09:15"),
(6, 8, "resume_5.pdf", "2022-09-18 17:40"),
(1, 6, "resume_6.pdf", "2022-10-08 14:55"),
(8, 2, "resume_7.pdf", "2022-04-15 10:10"),
(10, 3, "resume_8.pdf", "2022-05-28 18:25"),
(1, 5, "resume_9.pdf", "2022-08-30 07:05"),
(9, 6, "resume_10.pdf", "2022-10-02 22:30");


-- language table data
insert into `application`.`language`(student_id, language)
values
(1, 'English, Spanish, French, German, Albanian'),
(2, 'Mandarin, Japanese, Albanian'),
(3, 'Russian, Italian, Albanian'),
(4, 'Portuguese, Albanian'),
(5, 'Arabic, Spanish, Albanian'),
(6, 'French, German, Albanian'),
(7, 'Japanese, Italian, Albanian'),
(8, 'Albanian, Bosnian, Turkish'),
(9, 'English, French, Spanish, Albanian'),
(10, 'Spanish, Albanian');