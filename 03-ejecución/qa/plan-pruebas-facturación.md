# Plan de pruebas — Módulo Facturación

## Alcance



El objetivo es validar la creación, consulta, actualización de facturas y correcta gestión de facturas generadas para pacientes particulares y asegurados, con especial atención a los campos paciente_id, cita_id, tipo_pago, importe y estado_pago.

Nota: el desarrollo del módulo de Facturación presenta un retraso debido a la complejidad de las reglas de pago de tipo particular y seguro.

Consideraciones de negocio:
- Si se intenta facturar una cita ya facturada, debe devolver error: no se puede facturar dos veces la misma cita.
- Una factura con seguro necesita un número de póliza; sin él no se debe poder crear la factura.
- No se puede cambiar el tipo de pago una vez creada la factura; habría que anularla y crear una nueva.
- Las facturas particulares llevan IVA y las facturas con seguro están exentas.

---

## Tipos de prueba

- **Prueba funcional:** Validación del comportamiento esperado de cada operación.
- **Prueba de integración:** Verificación de comunicación entre Facturación, Citas y Pacientes.
- **Prueba de regresión:** Confirmación de que nuevos cambios no afectan funcionalidades existentes.
- **Prueba de aceptación:** Validación final por parte del usuario responsable del negocio.

---

## Casos de prueba

| ID | Caso | Endpoint | Resultado esperado |
|---|---|---|---|
| TC01 | Crear factura particular | POST /facturas | 201 Created |
| TC02 | Crear factura con seguro | POST /facturas | 201 Created |
| TC03 | Consultar listado de facturas | GET /facturas | 200 OK con lista de facturas |
| TC04 | Consultar factura por ID existente | GET /facturas/{id} | 200 OK con detalle de factura |
| TC05 | Consultar factura con ID inexistente | GET /facturas/{id} | 404 Not Found |
| TC06 | Actualizar estado de factura a pagada | PUT /facturas/{id}/estado | 200 OK |
| TC07 | Actualizar estado de factura con valor estado_pago inválido | PUT /facturas/{id}/estado | 400 Bad Request |
| TC08 | Crear factura con datos obligatorios incompletos | POST /facturas | 400 Bad Request |
| TC09 | Crear factura con importe negativo | POST /facturas | 400 Bad Request |
| TC10 | Validar factura particular y factura con seguro | POST /facturas | 201 Created con tipo_pago correcto |
| TC11 | Verificar que una factura pagada no pueda modificarse incorrectamente | PUT /facturas/{id}/estado | 400/409 según regla de negocio |
| TC12 | Validar integración entre cita completada y generación de factura | POST /facturas | Factura asociada correctamente a la cita |
| TC13 | Intentar facturar una cita ya facturada | POST /facturas | Error; no se puede facturar dos veces la misma cita |
| TC14 | Crear factura con seguro sin número de póliza | POST /facturas | 400 Bad Request; falta número de póliza |
| TC15 | Cambiar tipo de pago de una factura existente | PUT /facturas/{id}/estado | No permitido; la factura debe anularse y crearse de nuevo |
| TC16 | Verificar IVA en factura particular y exención en seguro | POST /facturas | 201 Created con IVA aplicado solo en particular |

---

## Datos de prueba

| Campo | Ejemplo |
|---|---|
| Paciente | PAC001 - Juan Pérez |
| Cita asociada | CIT001 |
| Tipo de pago | particular / seguro |
| Importe | 60 € |
| Estado de pago inicial | pendiente |

---

## Criterios de salida a producción

La funcionalidad del módulo de Facturación podrá pasar a producción cuando se cumplan los siguientes criterios:

### Validación funcional
- Todos los casos de prueba críticos y de alta prioridad deben estar ejecutados correctamente.
- Los procesos de creación, consulta y actualización de facturas deben funcionar según el contrato OpenAPI definido.
- La generación de facturas particulares y con seguro debe estar validada.
- Los cálculos de importes y coberturas del seguro deben coincidir con las reglas de negocio aprobadas.

### Validación técnica
- Todos los endpoints del módulo Facturación deben responder correctamente:
  - GET /facturas
  - POST /facturas
  - GET /facturas/{id}
  - PUT /facturas/{id}/estado
- Las respuestas HTTP deben cumplir el contrato definido:
  - 200 OK para consultas y actualizaciones correctas.
  - 201 Created para creación de facturas.
  - 400 Bad Request para datos inválidos.
  - 404 Not Found para recursos inexistentes.
- No deben existir errores críticos en logs de Backend.
- La integración con los módulos de Citas y Pacientes debe estar validada.

### Validación de calidad
- El 100% de los casos de prueba críticos deben estar aprobados.
- Al menos el 95% del total de casos de prueba planificados deben estar superados.
- No deben existir incidencias bloqueantes abiertas.
- Las incidencias medias deberán tener solución aplicada o plan de corrección aprobado.
- Las pruebas de regresión deben confirmar que los cambios no afectan a otros módulos.

### Validación de seguridad y datos
- Los datos de facturación deben almacenarse correctamente.
- Los permisos de acceso a información económica deben estar validados.
- La información sensible de pacientes debe cumplir los requisitos de protección de datos.
- Los errores de validación no deben exponer información interna del sistema.

### Validación de usuario
- El responsable funcional debe aprobar los resultados obtenidos.
- El equipo de QA debe emitir informe favorable de pruebas.
- Backend y Frontend deben confirmar la compatibilidad de la versión desplegada.
- La documentación técnica debe estar actualizada.

### Despliegue
- La versión debe estar desplegada correctamente en entorno de producción.
- Debe existir copia de seguridad previa al despliegue.
- Las variables de configuración necesarias deben estar verificadas.
- Debe existir monitorización activa después del lanzamiento.
- Se realizará seguimiento durante las primeras 48 horas tras la puesta en producción.