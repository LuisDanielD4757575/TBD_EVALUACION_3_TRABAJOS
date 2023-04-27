delimiter //
create procedure agregar_actores(in actorid int, in fname varchar(50), in lname varchar(50))
begin
	insert into actor(actor_id, first_name, last_name)
    values(actorid, fname, lname);
end //
delimiter ;