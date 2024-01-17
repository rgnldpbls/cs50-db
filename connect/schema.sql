CREATE TABLE users(
    id NUMERIC,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    userName TEXT NOT NULL,
    userPassword TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE schoolsUniv(
    id NUMERIC,
    name TEXT NOT NULL,
    type TEXT CHECK(type IN('Elementary School', 'Middle School', 'High School', 'Lower School', 'Upper School', 'College', 'University')),
    location TEXT NOT NULL,
    year NUMERIC NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE companies(
    id NUMERIC,
    name TEXT NOT NULL,
    industry TEXT CHECK(industry IN('Education', 'Technology', 'Finance')),
    location TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE connectionPeople(
    id NUMERIC,
    user_Id NUMERIC,
    PRIMARY KEY(id),
    FOREIGN KEY(user_Id) REFERENCES users(id)
);

CREATE TABLE connectionSchool(
    id NUMERIC,
    user_Id NUMERIC,
    startDate TEXT NOT NULL,
    endDate TEXT,
    type TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_Id) REFERENCES users(id)
);

CREATE TABLE connectionCompany(
    id NUMERIC,
    user_Id NUMERIC,
    startDate TEXT NOT NULL,
    endDate TEXT,
    title TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_Id) REFERENCES users(id)
);
