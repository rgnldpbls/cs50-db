CREATE TABLE phrase(
    sentenceNum INTEGER,
    characterNum INTEGER,
    messageLength INTEGER
);

INSERT INTO phrase (sentenceNum, characterNum, messageLength)VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW message AS
SELECT substr(sentence, characterNum, messageLength) AS phrase
FROM phrase p JOIN sentences s ON p.sentenceNum = s.id;
