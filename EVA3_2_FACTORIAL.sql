delimiter //
create function factorial(num int)
returns int deterministic
begin
	declare resu int;
    set resu = 1;
	factor: loop
		set resu = resu * num;
        set num = num - 1;
        if num = 1 then
			leave factor;
        end if;
    end loop factor;
    return resu;
end//
delimiter ;
 