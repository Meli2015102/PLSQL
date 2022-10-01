SET SERVEROUTPUT ON;

--Ejercicio 1
DECLARE

 Nombre VARCHAR2(50);
 Apellido1 VARCHAR2(50);
 Apellido2 VARCHAR2(50);
 Inicial VARCHAR2(10);
BEGIN

  nombre:= 'Iris';
  apellido1:= 'mejia';
  apellido2:= 'jimenez';
  
  Inicial:= SUBSTR(nombre,1,1)||'.'||SUBSTR(apellido1,1,1)||'.'||SUBSTR(apellido2,1,1); 
  dbms_output.put_line(UPPER(Inicial));
  
END;

--Ejercicio 2 
DECLARE

 X NUMBER;
 Residuo NUMBER;
BEGIN

  X:= 20;
  Residuo:= MOD(X,2);
  IF Residuo=0 THEN
  dbms_output.put_line('Par');
  ELSE
  dbms_output.put_line('Impar');
  END IF;
  
END;

--Ejercicio 3
DECLARE

  salario_maximo EMPLOYEES.SALARY%TYPE;
BEGIN

SELECT MAX(SALARY) INTO salario_maximo
FROM employees WHERE department_id = 100;

dbms_output.put_line('Salario máximo:'||salario_maximo);

END;


SET SERVEROUTPUT ON;

DECLARE

 Departamento DEPARTMENTS.DEPARMENT_ID%TYPE;
 NombreDepto  DEPARTMENTS.DEPARMENT_NAME%TYPE;
 NumEmpleado NUMBER;
 
BEGIN

  SELECT DEPARMENT_NAME INTO NombreDepto 
  FROM departments 
  WHERE DEPARMENT_ID = Departamento;
  
  SELECT COUNT(*) INTO NumEmpleado 
  FROM EMPLOYEES 
  WHERE DEPARMENT_ID = Departamento;
  
  dbms_output.put_line('El departamento'||NombreDepto||'tiene'||NumEmpleado||'empleados');
  
END; 







