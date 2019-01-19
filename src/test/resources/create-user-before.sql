delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
(1, 'admin', '$2a$08$XMBDP0nYOxHpqUybWINmCem4KT.Vj5BTtDRpN8NemGr.HH3YaDmgy', true),
(2, 'mike', '$2a$08$XMBDP0nYOxHpqUybWINmCem4KT.Vj5BTtDRpN8NemGr.HH3YaDmgy', true);

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');
