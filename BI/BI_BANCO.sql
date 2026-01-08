CREATE DATABASE BI_BANCO
GO

CREATE TABLE Dim_Fecha (
    id_fecha INT PRIMARY KEY,
    fecha DATE NOT NULL,
    dia INT,
    mes INT,
    nombre_mes VARCHAR(20),
    trimestre INT,
    anio INT
);

CREATE TABLE Dim_Cliente (
    id_cliente INT PRIMARY KEY,
    tipo_cliente VARCHAR(50),
    segmento VARCHAR(50)
);

CREATE TABLE Dim_Cuenta (
    id_cuenta INT PRIMARY KEY,
    tipo_cuenta VARCHAR(50)
);

CREATE TABLE Dim_Tipo_Transaccion (
    id_tipo_transaccion INT PRIMARY KEY,
    descripcion VARCHAR(50)
);

CREATE TABLE Dim_Canal (
    id_canal INT PRIMARY KEY,
    descripcion VARCHAR(50)
);

CREATE TABLE Dim_Sucursal (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(100),
    ciudad VARCHAR(50)
);

CREATE TABLE Hecho_Transaccion (
    id_hecho INT PRIMARY KEY,
    id_fecha INT NOT NULL,
    id_cliente INT NOT NULL,
    id_cuenta INT NOT NULL,
    id_tipo_transaccion INT NOT NULL,
    id_canal INT NOT NULL,
    id_sucursal INT NOT NULL,
    monto_transaccion DECIMAL(14,2),
    saldo_resultante DECIMAL(14,2),
    cantidad_transacciones INT,

    FOREIGN KEY (id_fecha)
        REFERENCES Dim_Fecha(id_fecha),
    FOREIGN KEY (id_cliente)
        REFERENCES Dim_Cliente(id_cliente),
    FOREIGN KEY (id_cuenta)
        REFERENCES Dim_Cuenta(id_cuenta),
    FOREIGN KEY (id_tipo_transaccion)
        REFERENCES Dim_Tipo_Transaccion(id_tipo_transaccion),
    FOREIGN KEY (id_canal)
        REFERENCES Dim_Canal(id_canal),
    FOREIGN KEY (id_sucursal)
        REFERENCES Dim_Sucursal(id_sucursal)
);
