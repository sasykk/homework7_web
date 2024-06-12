from sqlalchemy.orm import sessionmaker
from random import randint
from faker import Faker
from models import Student, Group, Teacher, Subject, Grade
from datetime import datetime, timedelta
from sqlalchemy import create_engine

engine = create_engine('sqlite:///mydatabase.db', echo=True)
Session = sessionmaker(bind=engine)
session = Session()

fake = Faker()

def create_students():
    for _ in range(30):
        student = Student(name=fake.name(), group_id=randint(1, 3))
        session.add(student)

def create_groups():
    for group_name in ['Group 1', 'Group 2', 'Group 3']:
        group = Group(name=group_name)
        session.add(group)

def create_teachers():
    for _ in range(3):
        teacher = Teacher(name=fake.name())
        session.add(teacher)

def create_subjects():
    subjects = ['PE', 'Informatics', 'Math', 'Physics', 'Chemistry']
    for subject_name in subjects:
        teacher_id = randint(1, 3)
        subject = Subject(name=subject_name, teacher_id=teacher_id)
        session.add(subject)

def create_grades():
    students = session.query(Student).all()
    subjects = session.query(Subject).all()
    for student in students:
        for subject in subjects:
            grade = randint(60, 100)
            date_received = datetime.now() - timedelta(days=randint(1, 365))
            new_grade = Grade(student_id=student.id, subject_id=subject.id, grade=grade, date_received=date_received)
            session.add(new_grade)

create_groups()
create_teachers()
create_subjects()
create_students()
create_grades()

session.commit()
