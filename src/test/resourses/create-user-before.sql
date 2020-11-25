delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
(1, 'admin', '$2a$08$O5za7NGO.3NJEs3rr2reD.1cbyGFBr.uEDrHztbeJsbUYbfn9SxFC', true),
(2, 'denis', '$2a$08$wPp/Qlujl7FJMHgEqnEwbun5K5PhfSQZU1ECDSVdB8xRBKE/GXlmu', true);

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');