CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    group_id INTEGER,
    FOREIGN KEY (group_id) REFERENCES Groups(id)
);

CREATE TABLE Groups (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Teachers (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Subjects (
    id INTEGER PRIMARY KEY,
    name TEXT,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
);

CREATE TABLE Grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER,
    date_received TEXT,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(id)
);


INSERT INTO Groups (name) VALUES
    ('Group 1'),
    ('Group 2'),
    ('Group 3');

INSERT INTO Teachers (name) VALUES
    ('Teacher 1'),
    ('Teacher 2'),
    ('Teacher 3');

INSERT INTO Subjects (name, teacher_id) VALUES
    ('PE', 1),
    ('Informatics', 3),
    ('Math', 2),
    ('Physics', 2),
    ('Chemistry', 1);

INSERT INTO Students (name, group_id) VALUES
    ('Don Pollo', 1),
    ('Bridger Atkins', 2),
    ('Sergey Lama', 2),
    ('Albert Einstein', 2),
    ('Joe Biden', 2),
    ('Donald Trump', 2),
    ('Patrick Bateman', 2),
    ('Walter White', 2),
    ('Jesse Pimkman', 2),
    ('Skyler White', 2),
    ('Thomas Larson', 3),
    ('Madison Beer', 3),
    ('Angelina Jolie', 3),
    ('Johny Depp', 3),
    ('Jeffrey Epstein', 3),
    ('Sigma Male', 3),
    ('Quandale Dingle', 3),
    ('Land Cruiser', 3),
    ('Michael Jordan', 3),
    ('Serega Pirat', 3),
    ('Perega Sirat', 2),
    ('Illya Kiva', 1),
    ('Malenkyi Hvyntyk', 1),
    ('Clo Nexx', 1),
    ('Abraham Lincoln', 1),
    ('Gangster Bro', 1),
    ('Magnus Carlsen', 1),
    ('Ahhh Blud', 1),
    ('Bill Collector', 1),
    ('Sergiy Sashuk', 1);

INSERT INTO Grades (student_id, subject_id, grade, date_received) VALUES
    (1, 2, 11, '2024-05-15'),
    (2, 3, 61, '2024-04-16'),
    (3, 3, 88, '2024-04-17'),
    (4, 4, 55, '2024-04-18'),
    (5, 1, 52, '2024-04-19'),
    (6, 5, 95, '2024-04-20'),
    (7, 5, 99, '2024-04-21'),
    (8, 2, 10, '2024-04-22'),
    (9, 4, 25, '2024-04-23'),
    (10, 1, 41, '2024-04-24');
