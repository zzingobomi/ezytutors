DROP TABLE IF EXISTS ezy_course_c6;
CREATE TABLE ezy_course_c6
(
    course_id serial PRIMARY KEY,
    tutor_id INT NOT NULL,
    course_name VARCHAR(140) NOT NULL,
    course_description VARCHAR(2000),
    course_format VARCHAR(30),
    course_structure VARCHAR(200),
    course_duration VARCHAR(30),
    course_price INT,
    course_language VARCHAR(30),
    course_level VARCHAR(30),
    posted_time TIMESTAMP DEFAULT now()
);

create table ezy_tutor_c6 (
    tutor_id serial primary key,
    tutor_name varchar(200) not null,
    tutor_pic_url varchar(200) not null,
    tutor_profile varchar(2000) not null
);

insert into ezy_tutor_c6(tutor_id, tutor_name, tutor_pic_url,tutor_profile)
values(1,'Merlene','http://s3.amazon.aws.com/pic1','Merlene is an experienced finance professional');

insert into ezy_tutor_c6(tutor_id, tutor_name, tutor_pic_url,tutor_profile)
values(2,'Frank','http://s3.amazon.aws.com/pic2','Frank is an expert nuclear engineer');

insert into ezy_tutor_c6(tutor_id, tutor_name, tutor_pic_url,tutor_profile)
values(3,'Bob','http://s3.amazon.aws.com/pic3','Bob has spent many years teaching ML to students and professionals alike');

insert into ezy_course_c6
    (course_id,tutor_id, course_name,course_level, posted_time)
values(1, 1, 'First course', 'Beginner' , '2021-04-12 05:40:00');
insert into ezy_course_c6
    (course_id, tutor_id, course_name, course_format, posted_time)
values(2, 2, 'Second course', 'ebook', '2021-04-12 05:45:00');

insert into ezy_course_c6
    (course_id, tutor_id, course_name, course_format, posted_time)
values(3, 1, 'Second course from author 1', 'ebook', '2021-04-12 05:45:00');

insert into ezy_course_c6
    (course_id, tutor_id, course_name, course_format, posted_time)
values(4, 1, 'Third course from author 1', 'ebook', '2021-04-12 05:45:00');

insert into ezy_course_c6
    (course_id, tutor_id, course_name, course_format, posted_time)
values(5, 3, 'First course from author 3', 'ebook', '2021-04-12 05:45:00');