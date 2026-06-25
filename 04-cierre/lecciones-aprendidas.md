# Registro de lecciones aprendidas

| Fase | Lección positiva | Lección de mejora | Acción recomendada (responsable / plazo) |
|-------|------------------|-------------------|-----------------------------------------|
| Inicio | El alcance y los objetivos del proyecto quedaron claros desde el comienzo. | No se estimó correctamente la complejidad de las reglas de facturación con aseguradoras. | Analizar con más detalle los requisitos de negocio y añadir margen a las tareas de mayor incertidumbre. (PM / en futuras planificaciones) |
| Planificación | Definir el contrato API desde la Sesión 2 permitió coordinar eficazmente backend y frontend. | Algunas dependencias técnicas y riesgos de infraestructura no se identificaron con suficiente antelación. | Mantener la definición temprana del API e incorporar una revisión formal de riesgos durante la planificación. (PM + Tech Lead / checklist previo a sprint) |
| Ejecución | Diseñar el plan de pruebas antes de finalizar el desarrollo redujo el tiempo necesario para las validaciones finales. | La incidencia en preproducción provocó una pérdida de tiempo que afectó al cronograma. | Preparar pruebas y validaciones tempranas, además de reforzar los controles antes de cada despliegue. (QA + DevOps / obligatorio antes de release) |
| Cierre | La colaboración del equipo permitió completar el proyecto y obtener aprendizajes valiosos para futuros desarrollos. | Los cambios de configuración no se validaron previamente en local, provocando la incidencia de preproducción (INC-001). | Establecer procedimiento obligatorio de validación de configuraciones en local y pruebas automatizadas de validación en pipeline. (DevOps + Backend / implementar en 2-3 semanas) |

## Acciones correctivas implementadas (INC-001)

- Validaciones automáticas de configuración en pipeline — Responsable: DevOps — Plazo: 2 semanas (implementado parcialmente).
- Bloqueo de despliegues si fallan tests automáticos — Responsable: DevOps — Plazo: inmediato (configurado).
- Control de versiones para cambios de configuración (repositorio de infra) — Responsable: DevOps — Plazo: 3 semanas.
- Checklist obligatorio de cambios para despliegues (incluye revisión por pares) — Responsable: PM / Tech Lead — Plazo: 1 semana.
- Runbook de recuperación y pasos de rollback documentados — Responsable: DevOps — Plazo: 2 semanas.
- Formación breve al equipo sobre gestión de configuraciones y despliegues — Responsable: PM — Plazo: 2 semanas.
- Alertas automáticas post-despliegue para detección temprana de fallos — Responsable: DevOps — Plazo: 2 semanas.

## Recomendaciones generales

- Incluir márgenes en estimaciones para elementos de alta incertidumbre (integración con aseguradoras, reglas de negocio complejas).
- Priorizar la definición de contratos (OpenAPI) y casos de prueba automáticos tempranos para acelerar integraciones frontend-backend.
- Mantener un registro de decisiones arquitectónicas (ADR) y revisar condiciones que aconsejen migrar a arquitectura distribuida si la carga y disponibilidad lo requieren.
- Programar una sesión de lecciones aprendidas con todos los equipos para formalizar mejoras en procesos y actualizar documentación.

## Seguimiento

- Responsable de seguimiento: Katherine Tisalema (Jefe de Proyecto). Las acciones correctivas se revisarán en la próxima retro y se trasladarán a backlog para priorización.