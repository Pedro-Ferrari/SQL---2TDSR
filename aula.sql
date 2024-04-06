CREATE TABLE INSERT_PROCEDURE (ID_PROCEDURE NUMBER,
                               INSTR_PROCEDURE VARCHAR2(30),
                               DATA_INSERT DATE,
                               USER_INSERT VARCHAR2(30));                     
CREATE SEQUENCE SQ_PROC;
                           
SELECT * FROM INSERT_PROCEDURE                        

SET SERVEROUTPUT ON;


CREATE OR REPLACE PROCEDURE INSERT_TB ( V_INSTR_PROCEDURE VARCHAR2,
      V_DATA_INSERT DATE, 
      V_USER_INSERT VARCHAR2
    )  AS 
    BEGIN
    INSERT INTO INSERT_PROCEDURE VALUES (SQ_PROC.NEXTVAL, V_INSTR_PROCEDURE ,V_DATA_INSERT, V_USER_INSERT);
    COMMIT;
END insert_tb;
CALL INSERT_TB('OUTRO INSERT', SYSDATE, 'JOAO PEDRO');

SELECT * FROM IN


//Função
CREATE OR REPLACE FUNCTION fun_calcula_fgts (
    p_val NUMBER
)   RETURN NUMBER IS 
BEGIN 
    RETURN p_val * 0.008;
END fun_calcula_fgts;

//Procedure
CREATE OR REPLACE PROCEDURE proc2 IS
    v_valor NUMBER;
BEGIN 
    v_valor := fun_calcula_fgts(5000);
    dbms_output.put_line('O VALOR DO FGTS É: ' || to_char(v_valor));
END proc2;







