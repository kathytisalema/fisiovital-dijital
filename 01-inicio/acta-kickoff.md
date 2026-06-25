# Acta de kick-off interno

## Dudas/riesgos planteados por el equipo

- **Frontend:** Necesito saber si hay alguna guía visual de marca o colores corporativos de FisioVital que seguir, y si las recepcionistas van a usar tablet, ordenador, o las dos cosas. 
-  Riesgo: dependencia del contrato de API 

----

- **Backend:** Preocupación por la gestión del historial clínico debido a la normativa de protección de datos y por la complejidad de la facturación mixta (particular/seguro).
-  Riesgo: complejidad legal del módulo de historial clínico y necesidad de definir pronto el contrato de API.
  
-----

- **QA:** Dispone de 3 meses de plazo 
- Riesgo: poco tiempo para pruebas completas, especialmente en el módulo de facturación. Necesidad de contar con criterios de aceptación claros y de simular integraciones con aseguradoras para las pruebas.

-----

- **DevOps:** Preocupación por el cumplimiento del RGPD, la ubicación de los datos dentro de la Unión Europea, la estrategia de copias de seguridad y el coste de la infraestructura.
-  Riesgo: limitaciones legales y presupuestarias para los entornos de despliegue.

## Matriz RACI inicial (alto nivel)

| Actividad | Jefe de Proyecto | Frontend | Backend | QA | DevOps |
|------------|-----------------|----------|---------|----|--------|
| Definir alcance | R/A | C | C | C | C |
| Diseño de interfaz | I | R/A | C | C | I |
| Lógica de negocio y datos | I | C | R/A | C | C |
| Pruebas | I | C | C | R/A | C |
| Despliegue | I | C | C | C | R/A |

*(R = Responsable, A = Aprobador, C = Consultado, I = Informado)*

