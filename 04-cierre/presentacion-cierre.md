# Guion de presentación final

## 1. Resumen del proyecto (1 min)
- Objetivo: Digitalizar la gestión de citas, historia clínica, facturación y panel de administración para FisioVital.
- Resultado principal: Entrega de los 5 módulos previstos y despliegue en entorno productivo, con un cambio aprobado para recordatorios por correo electrónico (CR-001).
- Fechas: Entrega prevista 2026-09-28; entrega real 2026-10-05 (retraso 1 semana debido a incidencias en facturación y preproducción).

## 2. Recorrido por el repositorio (3 min)
- Branches del proyecto:
  - Sesión-1---inicio: Documentación inicial, Project Charter, actas de descubrimiento.
  - Sesión-2-planificación: EDT, cronograma, contrato OpenAPI, plan de riesgos y comunicación.
  - Sesión-3-ejecución: Plan de pruebas, CR-001, INC-001, informe de seguimiento, pipeline CI/CD.
  - sesion-4-cierre (rama actual): Acta de aceptación, informe de cierre, postmortem y guion de presentación.
- Pull Requests fusionados:
  - Fusión de Sesión-1---inicio a main: Consolidó Project Charter, actas iniciales y stakeholders del proyecto.
  - Fusión de Sesión-2-planificación a main: Integró EDT, cronograma, riesgos, presupuesto y contrato OpenAPI.
  - Fusión de Sesión-3-ejecución a main: Incorporó planes de pruebas, gestión de cambios y incidencias, pipeline CI/CD y documentación de despliegue.
  - Fusión de sesion-4-cierre a main: Finaliza con acta de aceptación, informe de cierre, postmortem y guion de presentación.
  - Cada fusión marca un hito importante del proyecto con validación de calidad y trazabilidad completa.
- Commits destacados:
  - Fase Inicio (sesión 1):
    - Project Charter, actas de reunión (kickoff, descubrimiento) y definición de stakeholders.
  - Fase Planificación (sesión 2):
    - Estructura de Desglose del Trabajo (EDT) definida con 5 módulos principales y tareas asociadas.
    - Cronograma con diagrama de Gantt detallado por roles y duración estimada por módulo.
    - Plan de gestión de riesgos identificando 8 riesgos clave con estrategias de mitigación.
    - Plan de comunicación y presupuesto desglosado por área técnica y contingencia.
    - Contrato de API en OpenAPI para módulos de Citas y Facturación con especificación de endpoints.
    - Decisión de Arquitectura (ADR 001) eligiendo monolito modular sobre microservicios.
  - Fase Ejecución (sesión 3):
    - Informe de seguimiento semana 6 con indicadores de rendimiento.
    - Plan de comunicación y presupuesto refinado.
    - Plan de pruebas del módulo de Facturación con 12 casos de prueba.
    - Registro de INC-001 sobre incidencia de caída en pre-producción durante semana 6.
    - CR-001 cambio de alcance aprobado para recordatorios automáticos por correo.
    - Swagger preview, servidor local y actualización de plan de pruebas.
    - Estrategia de despliegue y pipeline CI/CD con validaciones y checklist.
  - Fase Cierre (sesión 4, rama actual):
    - Acta de aceptación final con 5 módulos entregados y aceptado con condiciones.
    - Informe de cierre del proyecto con comparativa planificado vs real.
    - Registro de lecciones aprendidas y análisis post-proyecto.
    - Actualización final de entregables, postmortem con análisis de causas raíz y guion de presentación.
- Issues cerrados:
  - Issue numero 4 CR-001: Solicitud de cambio para implementar recordatorios automáticos por correo electrónico. Aprobado por cliente con coste adicional de 2.500 euros dentro del presupuesto autorizado. Cerrado en fase de ejecución.
  - Issue numero 5 INC-001: Incidencia de caída del entorno de pre-producción durante semana 6. Causa raíz identificada en cambio de variable de entorno sin validación. Resuelto en 14 horas con restauración de configuración y aplicación de medidas preventivas.
  - Issue numero 6 INC-001: Seguimiento complementario de la incidencia de caída de pre-producción con análisis de lecciones aprendidas y recomendaciones de mejora en el pipeline y procedimientos de despliegue. Cerrado con propuesta de 7 acciones correctivas.
- Documentación Git: Cada rama marca una fase del proyecto (inicio, planificación, ejecución, cierre) con commits atómicos y trazables.
- Tags de versión:
  - v1.0-inicio: Marca el final de la fase de inicio con Project Charter, actas y definición de stakeholders consolidados.
  - v1.0-planificacion: Marca el final de la fase de planificación con EDT, cronograma, riesgos, presupuesto y contrato OpenAPI completados.
  - v1.0-ejecucion: Marca el final de la fase de ejecución con planes de pruebas, cambios aprobados, incidencias gestionadas, pipeline CI/CD y despliegue documentado.
  - v1.0-cierre: Marca el cierre final del proyecto con acta de aceptación, informe de cierre, postmortem y presentación completados.

## 3. Decisiones clave (2 min)
- Arquitectura elegida: monolito modular. Balanceó simplicidad de despliegue y claridad de módulos.
- Exclusión del envío de SMS del alcance para controlar costes y complejidad.
- Aprobación del CR-001 para recordatorios por correo electrónico.
- Enfoque de despliegue controlado mediante pipeline CI/CD y entornos de preproducción para validación.

## 4. Lecciones aprendidas (2 min)
- Tratar cambios de infraestructura con el mismo control que el código: versionado, revisión y pruebas previas.
- El pipeline debe incluir validaciones automáticas de configuración y bloqueos ante fallos críticos.
- Mejorar la coordinación entre QA, DevOps y Desarrollo para reducir MTTR en incidencias como INC-001.
- Invertir en formación operativa para el personal responsable de despliegues y gestión de configuración.

## 5. Acciones y próximos pasos (1.5 min)
- Programar la sesión de formación para el personal de recepción y el equipo de despliegue.
- Revisar y verificar la implementación de estas acciones en 2 semanas.

## 6. Cierre y aceptación (30 s)
- Estado: Aceptado con condiciones. Sesión de formación pendiente.
- Contacto para seguimiento: Marta Sánchez cliente y Jefe de Proyecto Katherine Tisalema.

