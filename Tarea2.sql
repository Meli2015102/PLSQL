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







