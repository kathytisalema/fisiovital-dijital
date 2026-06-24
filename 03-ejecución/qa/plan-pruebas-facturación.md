# Plan de pruebas — Módulo Facturación

## Alcance

Basado en el contrato `02-planificacion/api/openapi.yaml`.

Endpoints incluidos:

- `/facturas`
- `/facturas/{id}`
- `/facturas/{id}/estado`

El objetivo es validar la creación, consulta, actualización de estado y correcta gestión de facturas generadas para pacientes particulares, asegurados y mixtos.

---

## Tipos de prueba

- **Funcional:** Validación del comportamiento esperado de cada operación.
- **Integración:** Verificación de la interacción entre Facturación, Citas y Pacientes.
- **Regresión:** Confirmación de que cambios nuevos no afectan funcionalidades existentes.
- **Aceptación:** Validación final por parte del usuario responsable del negocio.

---

## Casos de prueba

| ID | Caso | Endpoint | Resultado esperado |
|---|---|---|---|
| TC01 | Crear factura particular | POST /facturas | 201 Created con objeto `Factura` |
| TC02 | Crear factura con seguro | POST /facturas | 201 Created con objeto `Factura` |
| TC03 | Consultar listado de facturas | GET /facturas | 200 OK con lista de facturas |
| TC04 | Consultar factura por ID existente | GET /facturas/{id} | 200 OK con detalle de factura |
| TC05 | Consultar factura por ID inexistente | GET /facturas/{id} | 404 Not Found |
| TC06 | Actualizar estado de factura a pagada | PUT /facturas/{id}/estado | 200 OK |
| TC07 | Actualizar estado de factura anulada | PUT /facturas/{id}/estado | 200 OK |
| TC08 | Crear factura con datos obligatorios incompletos | POST /facturas | 400 Bad Request |
| TC09 | Crear factura con importe negativo | POST /facturas | 400 Bad Request |
| TC10 | Crear factura con tipo inválido | POST /facturas | 400 Bad Request |
| TC11 | Validar cálculo de pago mixto | POST /facturas | 201 Created con importes correctos |
| TC12 | Verificar actualización inválida de estado para factura pagada | PUT /facturas/{id}/estado | 400/409 según regla de negocio |
| TC13 | Validar integración con cita completada | POST /facturas | Factura asociada correctamente a la cita |

---

## Datos de prueba

| Campo | Ejemplo |
|---|---|
| `id` | FAC001 |
| `citaId` | CIT001 |
| `pacienteId` | PAC001 |
| `fecha` | 2026-06-24 |
| `tipo` | mixto / particular / seguro |
| `importeTotal` | 75.50 |
| `importeSeguro` | 50.00 |
| `importePaciente` | 25.50 |
| `metodoPago` | tarjeta / efectivo / transferencia |
| `estado` | pendiente / pagada / anulada |

### Descripción de datos de prueba

Para crear una factura, la petición debe incluir los campos obligatorios del esquema `Factura` de OpenAPI. En una factura mixta, el importe total debe corresponder a la suma de la parte cubierta por el seguro y la parte pagada por el paciente.

Al actualizar el estado de la factura se debe enviar únicamente el nuevo valor de `estado`.

### Escenarios de validación

- Verificar que el servidor responde `201 Created` al crear facturas válidas.
- Verificar que `GET /facturas` devuelve `200 OK` y una lista de facturas con objetos válidos.
- Verificar que `GET /facturas/{id}` devuelve `200 OK` para facturas existentes y `404 Not Found` para IDs invalidos.
- Verificar que `PUT /facturas/{id}/estado` devuelve `200 OK` cuando el estado es válido.
- Verificar que `POST /facturas` devuelve `400 Bad Request` para datos incompletos, importes negativos o valores enum inválidos.
- Verificar que el importe total coincida con el detalle de importe seguro e importe paciente en facturas mixtas.

---

## Criterios de salida a producción

- Todos los casos críticos y de regresión deben ejecutarse y aprobarse.
- No deben existir errores de severidad alta o bloqueantes abiertos.
- Los endpoints deben cumplir con el contrato `02-planificacion/api/openapi.yaml`.
- `POST /facturas` debe devolver `201 Created` con un objeto `Factura` válido.
- `GET /facturas` debe devolver `200 OK` con una lista de facturas consistente con el esquema.
- `GET /facturas/{id}` debe devolver `200 OK` para facturas existentes y `404 Not Found` para IDs inválidos.
- `PUT /facturas/{id}/estado` debe aceptar solo los valores `pendiente`, `pagada` y `anulada`.
- El cálculo de pagos mixtos debe verificarse con `importeTotal == importeSeguro + importePaciente`.
- La factura debe estar asociada a una `citaId` válida y a un paciente existente.
- El equipo QA y el responsable del negocio deben aprobar el despliegue.

---

## Riesgos identificados

- Errores en reglas de negocio de importes mixtos.
- Inconsistencias entre importes de backend y frontend.
- Fallos de integración con Citas y Pacientes.
- Respuestas incorrectas para IDs de factura inválidos.
