
INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri ) VALUES ('bootcamp HTML','https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7','https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-14T03:00:00Z',1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-14T03:00:00Z',1);


INSERT INTO tb_notification (moment,read, route, text, user_id ) VALUES (TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z',true,'teste','atividade concluida',1);
INSERT INTO tb_notification (moment, read, route, text, user_id ) VALUES (TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z', false,'teste','atividade concluida',2);


INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id)  VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id)  VALUES ('Forum', 'Tire suas Duvidas', 2, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id)  VALUES ('Lives', 'Lives para turma', 3, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 0, 1);


INSERT INTO tb_section(title, description, position, img_Uri,  resource_id, prerequisite_id )  VALUES ('Capitulo 1', 'vamos comerçar', 1, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 1, null);
INSERT INTO tb_section(title, description, position, img_Uri,  resource_id, prerequisite_id )  VALUES ('Capitulo 2', 'vamos continuar', 2, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 1, 1);
INSERT INTO tb_section(title, description, position, img_Uri,  resource_id, prerequisite_id )  VALUES ('Capitulo 3', 'vamos finalizar', 3, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201811/online-3412473_1920_1.jpeg?tz.RfsTe_UTLHiDqxmpG7PY_nTIBjwF7', 1, 2);