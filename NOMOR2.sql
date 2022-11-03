SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE pattern1 AS
    i NUMBER(5);
    j NUMBER(5); 
BEGIN
    FOR i in 0..9 LOOP --membuat looping dari 0 sampai 9 
      FOR j in 0..9 LOOP --membuat looping dari 0 sampai 9 
        IF (i=j OR (i+j)=9) THEN --jika i sama dengan j dan i ditambah j = 9 
            DBMS_OUTPUT.PUT(' X'); --print x
            ELSE 
            DBMS_OUTPUT.PUT(' *');
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;
EXECUTE pattern1; 

CREATE OR REPLACE PROCEDURE pattern2 AS
    i NUMBER(5); 
    j NUMBER(5); 
BEGIN
    FOR i in 1..10 LOOP --looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --looping nilai i dari 1 sampai 10
        IF (i <= j) THEN --jika i kecil sama dengan j maka akan dieksekusi
            IF (i*j < 100) THEN --jika i dikali j < dari 100 maka akan dieksekusi
                --menampilkan i*j dengan format dua digit '00'
                DBMS_OUTPUT.PUT(TO_CHAR(i * j, '00'));
            ELSE 
                DBMS_OUTPUT.PUT(TO_CHAR(i * i, '000'));
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;
EXECUTE pattern2; 

CREATE OR REPLACE PROCEDURE pattern3 AS
    i NUMBER(5);
    j NUMBER(5); 
BEGIN
    FOR i in 1..10 LOOP --looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --looping nilai i dari 1 sampai 10
        IF (i>=j) THEN --jika i besar sama dengan j maka akan dieksekusi
            IF (i * j MOD 2 <> 0) THEN --jika suatu bilangan ganjil maka akan dieksekusi
            DBMS_OUTPUT.PUT(' 1');
            ELSE 
            DBMS_OUTPUT.PUT(' 0');
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;
EXECUTE pattern3; 