# Guion de presentación final

## 1. Resumen del proyecto (1 min)
- Objetivo: Digitalizar la gestión de citas, historia clínica, facturación y panel de administración para FisioVital.
- Resultado principal: Entrega de los 5 módulos previstos y despliegue en entorno productivo, con un cambio aprobado para recordatorios por correo electrónico (CR-001).
- Fechas: Entrega prevista 2026-09-28; entrega real 2026-10-05 (retraso 1 semana debido a incidencias en facturación y preproducción).

## 2. Recorrido por los entregables y evidencias (3 min)
- Módulos entregados: Autenticación; Citas; Pacientes/Historial; Facturación; Administración/Informes.
- Contrato de API para Citas y Facturación y plan de pruebas del módulo de facturación.
- Pipeline CI/CD y estrategia de despliegue operacional.
- Documentos de gestión: Project Charter, EDT, cronograma, actas (kickoff y aceptación), registros de cambios (CR-001) e incidencias (INC-001), postmortem y documentación de cierre.

## 3. Decisiones clave (2 min)
- Arquitectura elegida: monolito modular — balanceó simplicidad de despliegue y claridad de módulos.
- Exclusión del envío de SMS del alcance para controlar costes y complejidad.
- Aprobación del CR-001 para recordatorios por correo electrónico.
- Enfoque de despliegue controlado mediante pipeline CI/CD y entornos de preproducción para validación.

## 4. Lecciones aprendidas (2 min)
- Tratar cambios de infraestructura con el mismo control que el código: versionado, revisión y pruebas previas.
- El pipeline debe incluir validaciones automáticas de configuración y bloqueos ante fallos críticos.
- Mejorar la coordinación entre QA, DevOps y Desarrollo para reducir MTTR en incidencias como INC-001.
- Invertir en formación operativa para el personal responsable de despliegues y gestión de configuración.

## 5. Acciones y próximos pasos (1.5 min)
- Implementar validaciones de variables de entorno en el pipeline (prioridad alta).
- Versionar la configuración y añadir checklist obligatorio de cambios antes de desplegar.
- Crear y probar un runbook de rollback y recuperación para entornos críticos.
- Programar la sesión de formación para el personal de recepción y el equipo de despliegue.
- Revisar y verificar la implementación de estas acciones en 2 semanas.

## 6. Cierre y aceptación (30 s)
- Estado: Aceptado con condiciones (sesión de formación pendiente).
- Contacto para seguimiento: Marta Sánchez (cliente) y Jefe de Proyecto.

