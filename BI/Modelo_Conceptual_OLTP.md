# 📊 Modelo Conceptual – Sistema Bancario (BI)

## 🎯 Proceso de negocio
Análisis de las transacciones bancarias realizadas por los clientes a través de distintos canales y sucursales, con el fin de apoyar la toma de decisiones estratégicas.

---

## 📌 Tabla de Hechos

### 📊 HECHO_TRANSACCION

**Granularidad:**  
Una fila por cada transacción bancaria realizada.

**Medidas:**
- `monto_transaccion`
- `saldo_resultante`
- `cantidad_transacciones` (valor constante = 1)

**Claves foráneas:**
- `id_fecha` (FK)
- `id_cliente` (FK)
- `id_cuenta` (FK)
- `id_tipo_transaccion` (FK)
- `id_canal` (FK)
- `id_sucursal` (FK)

---

## 📅 Dimensiones

### 📅 DIM_FECHA
- `id_fecha` (PK)
- `fecha`
- `día`
- `mes`
- `nombre_mes`
- `trimestre`
- `año`

---

### 🧍 DIM_CLIENTE
- `id_cliente` (PK)
- `tipo_cliente`
- `segmento`

---

### 💳 DIM_CUENTA
- `id_cuenta` (PK)
- `tipo_cuenta`

---

### 🔄 DIM_TIPO_TRANSACCION
- `id_tipo_transaccion` (PK)
- `descripcion`

---

### 📱 DIM_CANAL
- `id_canal` (PK)
- `descripcion`

---

### 🏦 DIM_SUCURSAL
- `id_sucursal` (PK)
- `nombre_sucursal`
- `ciudad`