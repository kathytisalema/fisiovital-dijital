

# Plan de gestión de riesgos

| ID | Riesgo | Categoría | Probabilidad | Impacto | Respuesta |
|----|---------|-----------|-------------|----------|------------|
| R1 | Retrasos o bloqueos en el desarrollo del frontend por retrasos o cambios de la API | Técnico | Alta | Alta | Mitigar: definir contratos API y utilizar mock para el desarrollo frontend |
| R2 | Errore y perdidas de datos e historial clinico del paciente por la base de datos o copia de seguridad insuficiente | Técnico | Media |  Muy Alta | Mitigar: revisiones de código, establecer copias de seguridad automaticas y pruebas de recuperación |
| R3 | Baja o ausencia por enfermedad puede impedir ejecutar la regresión final a tiempo | QA | Media | Alta | Mitigar: documentar casos de prueba y capacitar a peronal extra para apoyar las pruebas |
| R4 | El proveedor cloud no podria garanticar alojamiento dentro de la UE | DevOps | Baja  | Muy Alta | Mitigar: verificar requisitos de residencia de datos antes de contratar al servicio |
| R5 | Pérdida de datos por errores en la base de datos o copias de seguridad insuficientes | DevOps | Baja | Alta | Mitigar: establecer backups automáticos y pruebas de recuperación |
| R6 | Incumplimiento de normativa de protección de datos sanitarios | Normativo | Baja | Muy Alta | Mitigar: aplicar controles de acceso, cifrado y revisión legal de requisitos |
| R7 | Resistencia del personal de Recepción al cambio y la utilizacion de la herramienta | Equipo/Recursos | Media | Media | Mitigar: Realizar formación y acompañamiento durante la implementación |
| R8 | Subestimación del esfuerzo necesario para completar los módulos | Equipo/Recursos | Media | Alta | Mitigar: revisar estimaciones y ajustar planificación periódicamente |
 R9 | Cambios frecuentes de los requisitos del cliente puede afectar el alcance y cronograma | Alcance | Alta | Alta | Mitigar: realizar revisiones periódicas y validar requisitos en cada iteración y gestionar cambios formalmente |
| R10 | Problemas de rendimiento cuando aumente el número de usuarios | Técnico | Baja | Media | Mitigar: realizar pruebas de carga y optimización de consultas |
| R11| Caida del entorno de pre-produccion | QA | Baja | Media | Mitigar: Volver a la configuración anterior, validaciones de configuración antes de desplegar cambios en el entorno |
