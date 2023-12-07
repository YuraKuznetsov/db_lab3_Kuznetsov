-- role
INSERT INTO role (role_id, role_name)
VALUES (1, 'ROLE_USER'),
       (2, 'ROLE_ADMIN');


-- discipline
INSERT INTO discipline (discipline_id, discipline_name)
VALUES (2, 'CUBE_2X2'),
       (3, 'CUBE_3X3'),
       (4, 'CUBE_4X4'),
       (5, 'CUBE_5X5'),
       (6, 'CUBE_6X6'),
       (7, 'CUBE_7X7');


-- status
INSERT INTO status (status_id, status_name)
VALUES (1, 'GOOD'),
       (2, 'DNF'),
       (3, 'PLUS_TWO');


-- user
INSERT INTO "user" (username, password, role_id)
VALUES  ('Cubewars', '$2a$10$vd2uG9k4I2eCpaHxJI3iYeg6oEu.8KK7q1VHzSIfRBxnU3fvYoKuy', 2),
        ('Fast as light', '$2a$10$XW6g9C7LLoC0vWrtwz9lMumDM201ezNyBHgetry1ExFGW2nIIRYbO', 1),
        ('god-user', '$2a$10$ZSbtNInwPxkrEiDuXqP2ROy6AbErnXYu6CVTCDk3QfouVU5y6OC92', 1),
        ('beginner', '$2a$10$xBfBzpEExsb.AYNEYE.J6O2MNE3iCiWv0kcC8eu2nKVEtONJ8YAeG', 1),
        ('bot', '$2a$10$BRA0SR/Th4HX5oic8vkKpe02gTP2Hi7u7mFvd/0nb3TeL41fmnLx.', 1);


-- solve
INSERT INTO solve (user_id, time, status_id, discipline_id, scramble, date)
VALUES  (1, '0:00.86', 1, 3, 'B'' U2 B2 F B'' F R'' B'' U'' R2 U R U'' D'' L'' F R D'' F2 U2 F2 R F2 U'' F''', '2023-12-07 11:49:22.581782'),
        (1, '0:02.70', 1, 3, 'U D2 U2 F U'' D'' F2 B2 U2 R2 F2 B L'' D U2 R'' F2 D B R2 F R B'' F2 U''', '2023-12-07 12:41:57.770070'),
        (1, '0:04.02', 1, 3, 'B'' L D U2 L2 F'' B'' U'' L F2 B L'' R2 L'' B2 D2 U D'' L'' B F R'' L'' F B''', '2023-12-07 12:42:02.440047'),
        (1, '0:02.75', 1, 3, 'B2 L F2 B D'' F R2 F2 B L'' U2 R'' U'' L F2 L B'' L2 F2 R'' L2 U D F'' L''', '2023-12-07 12:42:05.729611'),
        (1, '0:01.87', 1, 2, 'B'' U R2 U2 B'' R2 B D F'' B F2', '2023-12-07 12:42:10.046639'),
        (1, '0:02.33', 1, 2, 'B2 R'' B2 L B2 L R'' F2 D2 F D', '2023-12-07 12:42:12.854867'),
        (1, '0:00.88', 1, 2, 'F U'' L D'' F'' U2 R F'' D R2 D2', '2023-12-07 12:42:14.352565'),
        (1, '0:00.98', 1, 2, 'U2 B F R D'' F B'' L R L2 U', '2023-12-07 12:42:15.890311'),
        (2, '0:01.79', 1, 4, 'L2 R2 Lw L Bw L'' F U'' F2 Fw'' Bw'' D U F'' Uw'' Fw2 Lw'' Dw2 Uw2 U2 Bw R Rw2 Bw'' Uw Lw R'' F'' Rw2 Lw2 U2 Lw'' Uw F B', '2023-12-07 12:43:43.416787'),
        (2, '0:02.90', 1, 3, 'B2 F'' D'' R'' F R'' D2 B2 R'' U2 R2 B'' L U2 F2 R2 B'' R B'' F'' D'' B F'' B2 L2', '2023-12-07 12:43:48.403543'),
        (2, '0:03.23', 1, 3, 'F'' B2 U'' B2 D2 R2 L'' B R'' D2 F R'' B'' U'' R2 D F D R2 F'' U2 L'' R D'' F2', '2023-12-07 12:43:54.658841'),
        (2, '0:02.51', 1, 2, 'B'' U2 L2 D F'' D'' U D R'' D'' L', '2023-12-07 12:43:59.384119'),
        (2, '0:03.08', 1, 2, 'D L'' F B'' D U'' B F D2 L'' D''', '2023-12-07 12:44:03.327127'),
        (2, '0:01.27', 1, 5, 'Lw2 Dw L2 Dw Lw'' Bw'' Uw'' Rw'' Bw2 D'' F'' Lw'' Fw F2 Bw2 Fw'' Lw'' Fw'' D2 Lw2 Uw L'' Uw Bw2 L'' Fw2 Rw'' U Bw'' B2 L D'' L Fw'' D Bw2 Fw D Lw'' Rw''', '2023-12-07 12:44:08.129594'),
        (3, '0:01.19', 1, 3, 'U2 D L2 B D U B F2 U'' B'' L'' B R L2 F U2 B R2 U B R B L2 B D2', '2023-12-07 12:45:13.430060'),
        (3, '0:01.04', 1, 3, 'B R D F2 D'' U F2 D U'' F2 L'' U B R L D2 F2 B'' U2 L'' U'' L D U2 R', '2023-12-07 12:45:15.107766'),
        (3, '0:00.88', 1, 3, 'R'' L U F R D2 F'' L2 U'' R B'' D'' R'' B2 R U B R'' L'' B'' R D2 U'' L'' F2', '2023-12-07 12:45:16.812594'),
        (3, '0:00.91', 1, 6, 'B'' F Bw'' Fw2 B Fw L 3Uw2 Uw'' U'' 3Uw2 3Lw'' F2 R Lw2 U 3Uw B D'' 3Dw'' D2 U D'' 3Fw 3Lw 3Dw B2 3Lw'' Fw2 Lw U L'' 3Rw 3Lw Lw Uw'' Bw2 B'' D2 F R B 3Bw U B''', '2023-12-07 12:45:19.676824'),
        (3, '0:01.64', 1, 6, '3Uw2 3Rw R'' Rw2 Fw Lw 3Rw L'' F 3Fw Dw'' Fw'' 3Dw2 F'' 3Bw 3Dw Fw'' Lw'' 3Lw F'' 3Bw'' Fw2 3Uw'' 3Dw'' D Dw2 F'' Dw 3Rw2 Dw2 L 3Fw 3Lw'' 3Rw'' F2 D 3Dw'' B Fw'' 3Lw F2 Dw2 Uw2 L2 Rw', '2023-12-07 12:45:21.794483'),
        (3, '0:00.77', 1, 6, 'R L2 3Dw U'' 3Lw'' 3Bw B2 U2 3Lw'' 3Dw 3Rw2 3Dw B Dw'' D 3Uw'' 3Rw2 F B Lw'' R2 Fw2 U Bw F R L'' 3Dw Fw'' Lw'' Fw'' R'' 3Fw Uw'' Fw2 3Bw Uw'' R'' B'' Lw'' 3Uw2 3Fw'' 3Dw2 U 3Fw2', '2023-12-07 12:45:33.861806'),
        (4, '0:00.30', 1, 3, 'R L'' B2 L'' R2 B D B'' F'' U2 D L R'' F U'' D2 L2 B2 U'' R D2 U2 B'' U L', '2023-12-07 12:46:31.511293'),
        (4, '0:01.85', 1, 2, 'F2 B2 D2 R D R2 L2 D2 U2 F'' B2', '2023-12-07 12:46:43.052671');


-- news
INSERT INTO news (user_id, title, content)
VALUES (1, 'title1', 'content1'),
       (1, 'title2', 'content2'),
       (1, 'title3', 'content3'),
       (1, 'title4', 'content4'),
       (1, 'title5', 'content5');


-- comment
INSERT INTO comment (news_id, user_id, content, date)
VALUES  (1, 1, 'Comment 1', '2023-12-07 12:43:08.922156'),
        (2, 2, 'asdfasdfasd', '2023-12-07 12:44:23.072626'),
        (2, 2, 'asfdasfsadf', '2023-12-07 12:44:26.131161'),
        (2, 2, 'sfdasfasfasdf', '2023-12-07 12:44:27.863460'),
        (1, 3, 'asfsadf', '2023-12-07 12:45:53.296155'),
        (1, 3, 'asfasdf', '2023-12-07 12:45:57.519940'),
        (1, 4, 'sdfsd', '2023-12-07 12:46:55.667426'),
        (3, 1, 'some comment', '2023-12-07 12:49:12.661237');


-- like
INSERT INTO "like" (news_id, user_id, date)
VALUES  (2, 1, '2023-12-07 12:42:58.642051'),
        (2, 2, '2023-12-07 12:44:16.586331'),
        (1, 2, '2023-12-07 12:44:17.388842'),
        (2, 3, '2023-12-07 12:45:46.429395'),
        (1, 1, '2023-12-07 12:49:06.921205'),
        (3, 1, '2023-12-07 12:49:08.035062');