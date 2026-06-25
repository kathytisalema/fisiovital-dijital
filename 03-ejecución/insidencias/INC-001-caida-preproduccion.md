# INC-001 — Caída del entorno de pre-producción
 
## Fecha y detección
La noche del 23 de junio se detectó que el entorno de pre-producción no estaba disponible. El problema fue reportado por el equipo de QA.

## Descripción
El entorno de preproducción quedó inaccesible tras el cambio de una variable de entorno de conexión a la base de datos. Como consecuencia, la aplicación no arrancó y el equipo de QA no pudo ejecutar las pruebas.
 
## Impacto
- Equipo QA afectado
- Tiempo: 14 horas de indisponibilidad
- Se perdió un día completo de pruebas
- No se perdió ningún dato de usuario
- No hubo afectación a producción

## Causa raíz exacta
Se cambió una variable de entorno de conexión a la base de datos sin probarlo antes en local, y la aplicación no arrancó.

## Estado de datos
No, no se ha perdido ningún dato, solo el acceso estuvo caído unas 14 horas.

## Estado de resolución
Sí, hemos vuelto a la configuración anterior, pero hemos perdido un día completo de pruebas de QA.
 
## Acción de contingencia
- Se identificó la configuración incorrecta
- Se restauró la configuración anterior
- Se reiniciaron los servicios afectados
- Se propuso incorporar validaciones de configuración antes de desplegar cambios en el entorno

## Issue relacionado
#INC-001
