# 🚗 Control de Velocidad y Dirección de un Auto con VHDL

## 📌 Descripción
Este proyecto implementa el control de velocidad y dirección de un automóvil utilizando VHDL. Se utilizan dos motores de corriente continua controlados por el driver **L293D**. La velocidad y dirección se pueden modificar mediante comandos enviados por **puerto serie (RS232)** o mediante **sensores de línea**.

## 🔧 Características
- Control de dos motores con el driver **L293D**.
- Variación de velocidad entre **10% y 90%** en pasos de **5%**.
- Velocidades reflejadas en un **display de 7 segmentos**.
- Control mediante **comandos RS232 (TTL)**.
- Modo de control por **sensores de línea**.

## 💻 Comandos de Control (RS232)
Los comandos se envían desde una PC a través del protocolo **RS232** con las siguientes configuraciones:
- **Baud Rate**: 9600
- **Data Bits**: 8
- **Stop Bits**: 1
- **Parity**: NONE
- **Flow Control**: NONE

### 📝 Tabla de Comandos
| Comando  | Descripción |
|----------|------------|
| `D000Z`  | Detener motores (STOP) |
| `D1nnZ`  | Ajustar velocidad del **motor derecho** (nn = 10 a 90 en pasos de 5) |
| `D2nnZ`  | Ajustar velocidad del **motor izquierdo** (nn = 10 a 90 en pasos de 5) |
| `D3nnZ`  | Seleccionar velocidad media para recorrer la pista (nn = 10 a 90 en pasos de 5) |
| `D4sxZ`  | Simular sensores (**s=1**: encendidos, **x**: cualquier valor) |
| `D5sxZ`  | Seleccionar modo de control (**s=0**: desde PC, **s=1**: con sensores, **x**: cualquier valor) |

## 🎯 Modo de Control por Sensores
El sistema puede operar en **modo autónomo**, simulando que el auto sigue una línea con **cuatro sensores digitales** ubicados en el frente. Siempre **dos sensores detectan la línea simultáneamente** para ajustar la dirección.

## 🛠️ Requisitos
- FPGA compatible con VHDL.
- Driver **L293D** para el control de motores.
- Interfaz de comunicación **RS232 TTL**.
- **Display de 7 segmentos** para visualizar velocidades.
- Sensores digitales para detección de línea.

## 🚀 Simulación y Pruebas
Para verificar el correcto funcionamiento del sistema:
1. **Simulación en software**: Usar ModelSim o una herramienta compatible con VHDL.
2. **Prueba con hardware**: Conectar la FPGA, motores y sensores.
3. **Verificación de comandos**: Enviar comandos por RS232 y comprobar la respuesta del sistema.

## 📜 Licencia
Este proyecto es de código abierto y está disponible bajo la licencia **MIT**.

---
✉️ **Autor**: CENCIARINI, Angel Gabriel & RLLEPCA, Julian
📍 **Proyecto Académico - Introducción a VHDL**
