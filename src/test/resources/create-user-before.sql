DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr(id, username, password, active) VALUES
(1, 'admin', '$2a$08$XMBDP0nYOxHpqUybWINmCem4KT.Vj5BTtDRpN8NemGr.HH3YaDmgy', 'true'),
(2, 'mike', '$2a$08$XMBDP0nYOxHpqUybWINmCem4KT.Vj5BTtDRpN8NemGr.HH3YaDmgy', 'true');

INSERT INTO user_role(user_id, roles) VALUES
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');
