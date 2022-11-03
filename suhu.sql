SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE convert_suhu(celcius NUMBER) AS
    reamor NUMBER(3);
    kelvin NUMBER(3);
    fahrenheit NUMBER(3);
BEGIN
    reamor := 4/5 * celcius ; --menentukan nilai reamor 
    kelvin := celcius + 273; --menentukan nilai kelvin 
    fahrenheit := (9/5 * celcius)+32; --menentukan nilai fahrenheit

--menampilkan output
    DBMS_OUTPUT.PUT_LINE(reamor);
    DBMS_OUTPUT.PUT_LINE(kelvin);
    DBMS_OUTPUT.PUT_LINE(fahrenheit);
END;

EXECUTE convert_suhu(32);