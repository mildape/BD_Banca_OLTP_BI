**# Sistema de Gestión y Análisis de Transacciones Bancarias**



Este proyecto presenta el diseño de una solución integral de datos para una entidad bancaria, que abarca tanto la operación diaria como el análisis estratégico de la información, mediante el uso de una base de datos transaccional (OLTP) y una base de datos dimensional (BI).



---



**## 📌 Caso de Uso del Sistema**



Una entidad bancaria de alcance nacional ofrece servicios financieros a clientes personas naturales y jurídicas, quienes realizan diversas operaciones bancarias a través de distintos canales de atención, tales como ventanilla, cajeros automáticos (ATM), banca móvil y banca por internet.



Debido al alto volumen de transacciones y a la necesidad de contar con información confiable y oportuna, la institución requiere implementar un sistema que permita:



\- Registrar y controlar las transacciones bancarias realizadas por los clientes.

\- Garantizar la integridad y trazabilidad de la información operativa.

\- Analizar el comportamiento transaccional para apoyar la toma de decisiones gerenciales.



Para ello, se plantea una solución basada en dos componentes principales:



***### 🔹 Base de Datos Transaccional (OLTP)***

Soporta la operación diaria del banco, permitiendo:

\- Gestionar clientes (personas naturales y jurídicas).

\- Administrar cuentas bancarias de distintos tipos.

\- Registrar transacciones como depósitos, retiros, transferencias y pagos.

\- Identificar el canal y la sucursal asociados a cada operación.



***### 🔹 Base de Datos Dimensional (BI)***

Permite analizar la información histórica proveniente del sistema OLTP con fines estratégicos, facilitando:

\- El análisis del monto y la cantidad de transacciones por período.

\- La identificación de los canales más utilizados.

\- El análisis del desempeño de las sucursales.

\- La evaluación de tendencias y patrones transaccionales en el tiempo.



---



**## 📂 Contenido del Proyecto**



\- \*\*OLTP/\*\*

&nbsp; - Scripts SQL para la creación del modelo transaccional normalizado (3FN).

\- \*\*BI/\*\*

&nbsp; - Scripts SQL para la creación del modelo dimensional (esquema estrella).

\- \*\*README.md\*\*

&nbsp; - Documentación general del caso y del proyecto.



---



**## 🧠 Enfoque del Diseño**



\- El modelo OLTP está orientado a la eficiencia operativa y a la integridad de los datos.

\- El modelo BI está optimizado para consultas analíticas y generación de reportes.

\- Ambos modelos están relacionados mediante un enfoque de integración de datos (OLTP → BI).



---



**## 🛠️ Tecnologías Utilizadas**



\- SQL Server

\- Modelado de datos relacional

\- Modelado dimensional (Business Intelligence)

\- Git y GitHub para control de versiones



---



**## 🎯 Objetivo Académico**



Este proyecto tiene como finalidad aplicar conceptos de:

\- Modelamiento de bases de datos

\- Normalización

\- Diseño de Data Warehouse

\- Separación de cargas operativas y analíticas



*El repositorio incluye la documentación del caso de uso y los scripts SQL del modelo OLTP y BI, versionados en GitHub.*



