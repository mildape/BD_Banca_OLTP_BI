create database OLTP_BANCO

CREATE TABLE TipoCliente (
    id_tipo_cliente INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE TipoCuenta (
    id_tipo_cuenta INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE TipoTransaccion (
    id_tipo_transaccion INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE Canal (
    id_canal INT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE Sucursal (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50),
    direccion VARCHAR(150)
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre_razon_social VARCHAR(150) NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL,
    id_tipo_cliente INT NOT NULL,
    fecha_registro DATE NOT NULL,
    estado VARCHAR(20),

    FOREIGN KEY (id_tipo_cliente)
        REFERENCES TipoCliente(id_tipo_cliente)
);

CREATE TABLE Cuenta (
    id_cuenta INT PRIMARY KEY,
    numero_cuenta VARCHAR(30) NOT NULL,
    saldo_actual DECIMAL(14,2) NOT NULL,
    fecha_apertura DATE NOT NULL,
    estado VARCHAR(20),
    id_cliente INT NOT NULL,
    id_tipo_cuenta INT NOT NULL,
    id_sucursal INT NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_tipo_cuenta)
        REFERENCES TipoCuenta(id_tipo_cuenta),
    FOREIGN KEY (id_sucursal)
        REFERENCES Sucursal(id_sucursal)
);

CREATE TABLE Transaccion (
    id_transaccion INT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    monto DECIMAL(14,2) NOT NULL,
    saldo_resultante DECIMAL(14,2) NOT NULL,
    id_cuenta INT NOT NULL,
    id_tipo_transaccion INT NOT NULL,
    id_canal INT NOT NULL,

    FOREIGN KEY (id_cuenta)
        REFERENCES Cuenta(id_cuenta),
    FOREIGN KEY (id_tipo_transaccion)
        REFERENCES TipoTransaccion(id_tipo_transaccion),
    FOREIGN KEY (id_canal)
        REFERENCES Canal(id_canal)
);

CREATE TABLE Transferencia (
    id_transferencia INT PRIMARY KEY,
    id_transaccion INT NOT NULL,
    id_cuenta_origen INT NOT NULL,
    id_cuenta_destino INT NOT NULL,

    FOREIGN KEY (id_transaccion)
        REFERENCES Transaccion(id_transaccion),
    FOREIGN KEY (id_cuenta_origen)
        REFERENCES Cuenta(id_cuenta),
    FOREIGN KEY (id_cuenta_destino)
        REFERENCES Cuenta(id_cuenta)
);