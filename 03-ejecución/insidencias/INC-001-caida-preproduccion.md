# INC-001 — Caída del entorno de pre-producción
 
## Fecha y detección
La noche del 23 de junio se detecto la que el entorno de pre-producción no esta disponoble. El problema fue reportado por el equipo dde QA

## Descripción
El entorno de preproduccion quedo inaccesible tras el cambio de una variable de entorno de conexión a la base, como consecuencia la aplicacion no arranco y el equipo QA no pudo ejecutar las pruebas.
 
## Impacto
- Equipo QA afectado
- Tiempo: 14 horas de indisponibilidad
- Se perdió un dia completo de pruebas
- No se perdio ningún dato de usuario
- No hubo afectacióna producciín

## Causa raíz (preliminar)
Se cambio una variable de entorno de conexión a la base de datos sin haber probado antes en el entorno local, por tal motivo la aplicación no arranco correctamente
 
## Acción de contingencia
- Se identifico la configuración incorrecta
- Se restauró la configuración anterior
- Se reiniciaron los servicios afectados
- Se propuso incorportar validaciones de configuración antes de desplegar cambios en el entorno

 
## Issue relacionado
#INC-001
