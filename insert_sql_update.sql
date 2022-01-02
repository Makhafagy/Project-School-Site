-- Inserting Students 8 datas
INSERT INTO Students VALUES ('11111111', 'Denny', 'Laurus', '9092457789', '9533 Bolsa Avenue Westminster CA 92683', '12158');
INSERT INTO Students VALUES ('22222222', 'Lenny', 'Yen', '9493332568', '24035 El Toro Road Laguna Hills CA 92653', '18355');
INSERT INTO Students VALUES ('33333333', 'Jimmy', 'Chan', '9490205786', '21405 McGaw Avenue Irvine CA 92604', '18355');
INSERT INTO Students VALUES ('44444444', 'Kyle', 'Venmort', '7148638551', '1877 McFadden Avenue Santa Ana CA 92705', '12158');
INSERT INTO Students VALUES ('55555555', 'Smiley', 'Coco', '7148108558', '12332 South Coast Drive Costa Mesa CA 92626', '12158');
INSERT INTO Students VALUES ('66666666', 'Jennie', 'Pham', '9094330235', '8221 Katella Avenue Garden Grove CA 92841', '18355');
INSERT INTO Students VALUES ('77777777', 'Mandy', 'Jonhson', '5624415820', '1456 La Grand Avenue Garden Grove CA 92841', '12158');
INSERT INTO Students VALUES ('88888888', 'Laura', 'Smichel', '9492082241', '2015 Lake Side Drive La Habra CA 90631', '18355');

-- Inserting Departments 2 datas 
INSERT INTO Departments VALUES ('12158', 'Computer Science', '6572783700', 'CS-522', '215468527');
INSERT INTO Departments VALUES ('18355', 'Mathematics', '6572783631', 'MH-154', '315367375');

-- Inserting Professors 3 datas
INSERT INTO Professors VALUES ('215468527', 'Shawn Wang', 'Dr.', 'M', '90000', '20 Fullerton St', 'Fullerton', '31624', 'CA', '657', '3561871');
INSERT INTO Professors VALUES ('315367375', 'Matthew Varney', 'Mr.', 'M', '80000', '35 Fullerton St', 'Fullerton', '31624', 'CA', '657', '2185264');
INSERT INTO Professors VALUES ('834721652', 'Stacy Morrow', 'Ms.', 'F', '85000', '40 Fullerton St', 'Fullerton', '31624', 'CA', '657', '2943087');

-- Inserting Courses 4 datas
INSERT INTO Courses VALUES ('01242', 'CPSC332', 'Database Systems', '4', '12158');
INSERT INTO Courses VALUES ('71236', 'CPSC485', 'An Intro to Computational Bioinformatics', '3', '12158');
INSERT INTO Courses VALUES ('38123', 'MATH270A', 'Discrete Mathematics', '3', '18355');
INSERT INTO Courses VALUES ('45892', 'MATH338', 'An Intro to Statistics', '4', '18355');

-- Inserting Sections 6 datas
INSERT INTO Sections VALUES ('1833', 'CS-200', '30', 'M W', '10:00', '12:00', '01242', '215468527');
INSERT INTO Sections VALUES ('1844', 'CS-220', '32', 'T TH', '13:00 ', '15:00', '71236', '215468527');
INSERT INTO Sections VALUES ('1853', 'CS-330', '25', 'M W', '16:00', '18:00', '01242', '215468527');
INSERT INTO Sections VALUES ('1862', 'MH-115', '36', 'M W F', '8:00', '11:00', '38123', '315367375');
INSERT INTO Sections VALUES ('1873', 'MH-120', '27', 'T TH', '14:00', '15:00', '45892', '834721652');
INSERT INTO Sections VALUES ('1875', 'MH-120', '28', 'M W', '19:00', '20:00', '45892', '834721652');

-- Inserting Enrollment 20 datas
INSERT INTO Enrollment VALUES ('A-', '11111111', '1833');
INSERT INTO Enrollment VALUES ('B', '44444444', '1833');
INSERT INTO Enrollment VALUES ('B+', '66666666', '1833');
INSERT INTO Enrollment VALUES ('C', '88888888', '1844');
INSERT INTO Enrollment VALUES ('F', '77777777', '1844');
INSERT INTO Enrollment VALUES ('C', '44444444', '1853');
INSERT INTO Enrollment VALUES ('B-', '33333333', '1853');
INSERT INTO Enrollment VALUES ('D', '22222222', '1853');
INSERT INTO Enrollment VALUES ('A+', '66666666', '1862');
INSERT INTO Enrollment VALUES ('B', '55555555', '1862');
INSERT INTO Enrollment VALUES ('C+', '33333333', '1862');
INSERT INTO Enrollment VALUES ('C-', '22222222', '1862');
INSERT INTO Enrollment VALUES ('A-', '44444444', '1873');
INSERT INTO Enrollment VALUES ('B-', '55555555', '1873');
INSERT INTO Enrollment VALUES ('C', '88888888', '1873');
INSERT INTO Enrollment VALUES ('D+', '77777777', '1873');
INSERT INTO Enrollment VALUES ('F', '22222222', '1875');
INSERT INTO Enrollment VALUES ('B', '11111111', '1875');
INSERT INTO Enrollment VALUES ('D-', '33333333', '1875');
INSERT INTO Enrollment VALUES ('C+', '66666666', '1875');

-- Inserting Minor 2 datas
INSERT INTO Minor VALUES ('11111111','18355');
INSERT INTO Minor VALUES ('22222222','12158');

-- Inserting Prerequisites
INSERT INTO Prerequisites VALUES ('01242', 'CPSC301');
INSERT INTO Prerequisites VALUES ('38123', 'MATH250B');
INSERT INTO Prerequisites VALUES ('45892', 'MATH270B');
INSERT INTO Prerequisites VALUES ('71236', 'CPSC351');

-- Inserting Degrees 3 datas
INSERT INTO Degrees VALUES ('215468527','PhD Computer Science');
INSERT INTO Degrees VALUES ('215468527','MS Computer Science');
INSERT INTO Degrees VALUES ('315367375','PhD Mathematics');