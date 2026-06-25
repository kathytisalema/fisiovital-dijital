# Acta de aceptación final

**Fecha:** 25/06/2026  
**Asistentes:** Katherine Tisalema (Jefe de Proyecto), Marta Sánchez (Gerente FisioVital)

## Repaso de criterios de éxito (Project Charter, Sesión 1)

| Criterio de éxito | ¿Cumplido? | Evidencia |
|-------------------|------------|-----------|
| Reducir errores de citas duplicadas | Sí | El sistema de gestión de citas fue implantado y validado durante las pruebas finales; no se registraron incidencias críticas relacionadas con duplicidades. |
| Gestión de facturación (particular / seguro) | Cumplido con reservas | El módulo de Facturación fue entregado y es operativo; sin embargo, hubo un retraso por la complejidad de las reglas de pago mixto y requiere verificación final tras pruebas de QA. |
| Informe de ocupación por clínica | Sí | El módulo de informes fue entregado y validado en pruebas de aceptación. |
| Disponibilidad del sistema (producción) >= 99% | Sí | Monitorización activa tras el despliegue y comprobaciones iniciales realizadas. |
| Tiempo de respuesta de API en endpoints críticos (< 500 ms) | Por verificar | Pruebas de rendimiento planificadas; ejecutar antes de la aceptación definitiva si no realizadas. |
| Cumplimiento RGPD y protección de datos | Sí | Hosting en UE y controles de acceso revisados; requerimientos legales documentados en kickoff. |
| Backups y restauración verificados | Sí | Copias y procedimiento de restauración probados como parte del plan de despliegue. |
| Documentación técnica y manuales entregados | Sí | OpenAPI, plan de pruebas, guías de despliegue y manual de usuario disponibles en el repositorio. |
| Satisfacción del cliente (encuesta) >= 90% | Por verificar | Feedback preliminar positivo; encuesta formal pendiente tras la sesión de formación. |

## Alcance entregado frente al inicial

- Se entregaron los 5 módulos previstos en el alcance inicial (Autenticación, Citas, Pacientes/Historial, Facturación, Administración/Informes).
- Se implementó el CR-001: recordatorios por correo electrónico (implementación por email completada; SMS fuera de alcance por presupuesto).
- Contrato OpenAPI disponible para Citas y Facturación, plan de pruebas y estrategia de despliegue documentados.
- Se aplicaron medidas correctivas tras la incidencia INC-001 (validaciones de configuración, control de cambios, alertas y runbook).

## Incidencia relevante

- INC-001 (23/06/2026): caída del entorno de pre-producción por modificación de una variable de entorno de conexión a la base de datos sin validación previa.
- Impacto: 14 horas de indisponibilidad; no se perdieron datos; se perdió un día de pruebas de QA.
- Estado: resuelto (restaurada la configuración anterior). Se han planificado e iniciado acciones correctivas para evitar recurrencias.

## Condiciones y reservas del cliente

- [ ] Realizar una sesión de formación para el personal de recepción (pendiente).
- [ ] Verificación final del módulo de Facturación por QA tras corrección de reglas de pago mixto (pendiente).
- [x] No existen incidencias críticas abiertas actualmente.

## Decisión

**Aceptado con condiciones**

La aceptación del proyecto se formaliza con las condiciones listadas arriba; una vez completadas las acciones pendientes (formación y verificación QA de Facturación), se considerará la aceptación definitiva.

## Firmas

Katherine Tisalema — Jefe de Proyecto
Firma: ______________________

Fecha: ______________________




Marta Sánchez — Patrocinadora / Gerente FisioVital
Firma: ______________________

Fecha: ______________________





**Fecha de firma:** 25/06/2026
