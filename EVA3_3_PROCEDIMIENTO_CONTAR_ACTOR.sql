delimiter //
create procedure contar_actores(out cant int)
begin
	declare terminar int default false;
    declare actorid int;
	declare cant_actores cursor for select actor_id from actor;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET terminar = TRUE;
    
    open cant_actores;
    set cant = 0;
    contar_a: loop
		fetch cant_actores into actorid;
        set cant = cant + 1;
        if terminar then
			leave contar_a;
		end if;
    end loop;
end //
delimiter ;