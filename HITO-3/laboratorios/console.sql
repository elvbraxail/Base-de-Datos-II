create database hito3_2023;
use hito3_2023;

set @usuario = 'ADMIN';
set @locacion = 'EL ALTO';


select 'ADMIN';
select 'EL ALTO';

create or replace function  variable ()
returns text
begin
return @usuario;
end;



select variable();



set @hito_3 = 'ADMIN';


create or replace function  hito_3 ()
returns varchar (50)
begin
    declare respuesta varchar (50);
    case @hito_3
    when   'ADMIN'
        then
        set  respuesta ='usuario admin  ';

        else
        set respuesta = 'Usuario invitado';

    end case ;

return respuesta;
end;


select hito_3 ();


create or replace function numeros_naturales (limite int )
returns text
begin
    declare cont int default  2;
    declare respuesta text default '';

    while cont  <= limite  do
        set respuesta = CONCAT (respuesta, cont , ' , ');
        set cont = cont + 2;
        end while;
    return respuesta;
end;


select numeros_naturales (10);



create or replace function numeros (limite integer )
    returns text
    begin
    declare pares int default 2 ;
    declare impares int default 1;
    declare cont int default  1;
    declare respuesta text default '' ;

    while cont  <= limite do
        if cont % 2 = 1 then
            set respuesta = CONCAT (respuesta , pares , ',');
            set pares = pares + 2;
        else
            set respuesta = CONCAT (respuesta , impares , ',');
            set impares = impares + 2 ;
        end if;
        set cont = cont + 1;
    end while;



    return respuesta;
    end;

select numeros(9)


