--Desde un usuario administrador Oracle como puede ser el user system

CREATE USER SOUTH_SUPERSTORE_ORIGINAL IDENTIFIED BY XXXXXXX; --Introduce la contraseña deseada

grant create session  to SOUTH_SUPERSTORE_ORIGINAL;

grant connect to SOUTH_SUPERSTORE_ORIGINAL;

GRANT UNLIMITED TABLESPACE TO SOUTH_SUPERSTORE_ORIGINAL;

GRANT CREATE ANY TABLE TO SOUTH_SUPERSTORE_ORIGINAL;

GRANT CREATE ANY  SEQUENCE TO SOUTH_SUPERSTORE_ORIGINAL; 
GRANT CREATE ANY TRIGGER TO SOUTH_SUPERSTORE_ORIGINAL; 