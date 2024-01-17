-- UPDATE users
-- SET password = 'oops!'
-- WHERE username = 'admin';

-- DELETE FROM user_logs
-- WHERE new_password = 'oops!';

-- INSERT INTO user_logs(type, old_username, new_username, old_password, new_password) VALUES("update", "admin", "admin", "44bf025d27eea66336e5c1133c3827f7", "emily33")

UPDATE users
SET password = '982c0381c279d139fd221fce974916e7'
WHERE username = 'admin';

UPDATE user_logs
SET old_password = '982c0381c279d139fd221fce974916e7'
where id = 52;

UPDATE user_logs
SET new_password = '44bf025d27eea66336e5c1133c3827f7'
WHERE id = 52;

DELETE FROM user_logs
WHERE id = 53;

-- https://www.md5hashgenerator.com/
