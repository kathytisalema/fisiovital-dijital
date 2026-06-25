# Registro de interesados
 
| Interesado | Rol/Interés | Poder | Interés | Estrategia |
|---|---|---|---|---|
| Marta Sánchez | Gerente de FisioVital y patrocinadora | Alto | Alto | Gestionar de cerca |
| Katherine Tisalema | Jefe de Proyecto | Alto | Alto | Gestionar de cerca |
| Equipo de Desarrollo | Implementación técnica | Medio | Alto | Mantener satisfecho |
| Equipo de QA | Aseguramiento de calidad | Medio | Alto | Mantener satisfecho |
| Equipo de DevOps | Infraestructura y despliegues | Medio | Medio | Mantener informado |
| Recepcionistas | Usuarias finales del sistema de citas | Bajo | Alto | Mantener informados |
| Fisioterapeutas | Usuarios finales del módulo de pacientes y citas | Bajo | Alto | Mantener informados |
| Pacientes | Beneficiarios del servicio | Bajo | Medio | Monitorizar |
| Proveedor de pagos | Servicio externo de cobros | Medio | Bajo | Mantener informado |
| Autoridad regulatoria | Cumplimiento de datos y protección de la información | Alto | Medio | Gestionar de cerca |







```mermaid
quadrantChart
    title Matriz Poder/Interés
    x-axis Bajo Interés --> Alto Interés
    y-axis Bajo Poder --> Alto Poder
    quadrant-1 Gestionar de cerca
    quadrant-2 Mantener satisfecho
    quadrant-3 Monitorizar
    quadrant-4 Mantener informado
    Marta Sánchez: [0.9, 0.9]
    Katherine Tisalema: [0.8, 0.85]
    Equipo de Desarrollo: [0.6, 0.8]
    Equipo de QA: [0.6, 0.8]
    Equipo de DevOps: [0.5, 0.6]
    Recepcionistas: [0.4, 0.75]
    Fisioterapeutas: [0.4, 0.75]
    Pacientes: [0.3, 0.5]
    Proveedor de pagos: [0.5, 0.3]
    Autoridad regulatoria: [0.8, 0.5]
```
