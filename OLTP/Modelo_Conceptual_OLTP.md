## 📌 Modelo Conceptual – Base de Datos Transaccional (OLTP)

### 📋 CLIENTE
- **id_cliente (PK)**
- nombre_razon_social
- documento_identidad
- id_tipo_cliente (FK)
- fecha_registro
- estado

---

### 📋 TIPO_CLIENTE
- **id_tipo_cliente (PK)**
- descripcion

---

### 📋 CUENTA
- **id_cuenta (PK)**
- numero_cuenta
- saldo_actual
- fecha_apertura
- estado
- id_cliente (FK)
- id_tipo_cuenta (FK)
- id_sucursal (FK)

---

### 📋 TIPO_CUENTA
- **id_tipo_cuenta (PK)**
- descripcion

---

### 📋 SUCURSAL
- **id_sucursal (PK)**
- nombre_sucursal
- ciudad
- direccion

---

### 📋 TRANSACCION
- **id_transaccion (PK)**
- fecha
- hora
- monto
- saldo_resultante
- id_cuenta (FK)
- id_tipo_transaccion (FK)
- id_canal (FK)

---

### 📋 TIPO_TRANSACCION
- **id_tipo_transaccion (PK)**
- descripcion

---

### 📋 CANAL
- **id_canal (PK)**
- descripcion

---

### 📋 TRANSFERENCIA
- **id_transferencia (PK)**
- id_transaccion (FK)
- id_cuenta_origen (FK)
- id_cuenta_destino (FK)
