
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

select numeros(9);


create or replace function dowwhile (x integer )
returns text
Begin
    declare str  text default '' ;


    repeat
        set str = CONCAT (str , x, ' - ');
        set x = x - 1 ;

    until  x <=0 end repeat;
    return  str ;


end;

select dowwhile(10);

create or replace function LETRAS  (x integer )
returns text
Begin
    declare str  text default '' ;
    repeat
    IF X % 2 = 0 THEN
        SET str = CONCAT (str , x , '-AA-');
        else
        set str = CONCAT  (str , x , '-BB-' );

     end if;
    SET x = x-1 ;
    until  x <= 0 end repeat;
    return  str ;

end;
select LETRAS(10);


create or replace function looper  (x integer )
returns text
Begin
    declare str text default '';

    a : loop
        if x > 0
        then
          leave a;
        end if ;
        set str = CONCAT  (str , x , ' ');
        set x = x + 1 ;
        iterate a;

    end loop;
    return str ;
end;


    select looper(-10);

create or replace function chavitO  (x integer )
returns text
Begin
    declare str text default '';

    a : loop
        if x > 0
        then
          leave a;
        end if ;
         IF x % 2 = 0 THEN
        SET str = CONCAT (str , x , '-AA-');
        else
        set str = CONCAT  (str , x , '-BB-' );

     end if;

        set x = x + 1 ;
        iterate a;

    end loop;
    return str ;
end;


    select chavitO(-10);



create or replace function  creditos ( creditnumber integer )

returns text
begin

    declare str text default ' ';

    if creditnumber > 5000

         then  set str = ' platinum ';

    end if ;
        if ( creditnumber >= 10000 and creditnumber <= 50000 )

         then  set str = ' Gold  ';

    end if ;
        if creditnumber < 10000

         then set str = ' Silver  ';

    end if ;
    return  str;

end;

select creditos(10000) As tipo;
select creditos(9999) As tipo;

#char_length puede resolver de cadena de textos puede cambiarloa

create or replace function yoyt ( a text )
returns text
begin
    declare str text default ' ' ;
    if char_length(a) > 7
        then set str = ' pasas bro  ';
        else
         set str = ' NO PASAS BRO ';
    end if;

    return str  ;
end;

select

create or replace function cadenas ( a text , b2 text  )
returns text
begin
    declare str text default '' ;

    if strcmp(a , b2) =  0

        then set str = ' son cadenas iguales  ';
        else
        set str = ' cadenas distintas ';

    end if;
    return  str;

end;

create or replace function cad ( a text , b2 text  )
returns text
begin
    declare str text default '' ;

    if strcmp(a , b2)  =  0 and char_length( a , b2) > 15 then

        set str = ' valido  ';
        else
        set str  = ' no valido ';

    end if;
    return  str;

end;

select cad(dadadada , cadad    )





