-- role
CREATE TABLE role
(
    role_id    INT          NOT NULL  PRIMARY KEY,
    role_name  VARCHAR(15)  NOT NULL
);

-- discipline
CREATE TABLE discipline
(
    discipline_id    INT          NOT NULL PRIMARY KEY,
    discipline_name  VARCHAR(15)  NOT NULL
);

-- status
CREATE TABLE status
(
    status_id   INT          NOT NULL PRIMARY KEY,
    status_name VARCHAR(15)  NOT NULL
);


-- user
CREATE TABLE "user"
(
    user_id   SERIAL        NOT NULL  PRIMARY KEY,
    email     VARCHAR(50),
    username  VARCHAR(50)   NOT NULL,
    password  VARCHAR(100)  NOT NULL,
    role_id   INT           NOT NULL  REFERENCES role
);


-- solve
CREATE TABLE solve
(
    solve_id       SERIAL                  PRIMARY KEY,
    user_id        INT           NOT NULL  REFERENCES "user",
    time           VARCHAR(15)   NOT NULL,
    status_id      INT           NOT NULL  REFERENCES status,
    discipline_id  INT           NOT NULL  REFERENCES discipline,
    scramble       VARCHAR(500)  NOT NULL,
    date           TIMESTAMP     NOT NULL  DEFAULT now()
);


-- news
CREATE TABLE news
(
    news_id  SERIAL                   PRIMARY KEY,
    user_id  INT            NOT NULL  REFERENCES "user",
    title    VARCHAR(50)    NOT NULL,
    content  VARCHAR(1000)  NOT NULL,
    date     TIMESTAMP      NOT NULL  DEFAULT now()
);


-- comment
CREATE TABLE comment
(
    comment_id  SERIAL                   PRIMARY KEY,
    news_id     INT            NOT NULL  REFERENCES "news",
    user_id     INT            NOT NULL  REFERENCES "user",
    content     VARCHAR(200)   NOT NULL,
    date        TIMESTAMP      NOT NULL  DEFAULT now()
);


-- like
CREATE TABLE "like"
(
    like_id  SERIAL              PRIMARY KEY,
    news_id  INT       NOT NULL  REFERENCES "news",
    user_id  INT       NOT NULL  REFERENCES "user",
    date     TIMESTAMP NOT NULL  DEFAULT now()
);
