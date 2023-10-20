
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].modulos(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[socio] [varchar](500) NULL,
	[entorno] [varchar](500) NULL,
	[operacion] [varchar](500) NULL,
	[fechadevalidacion] [varchar](max) NULL,
	[status] [varchar](max) NULL,
	[TiempoProceso] [varchar](max) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE modulos (
id [int] IDENTITY(1,1) NOT NULL,
tipo [varchar](max) NULL,
nombre [varchar](max) NULL,
descripcion [varchar](max) NULL,
fecha [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE ventas (
id [int] IDENTITY(1,1) NOT NULL,
idproductos [varchar](max) NULL,
idmesa [varchar](max) NULL,
idcaja [varchar](max) NULL,
descripcion [varchar](max) NULL,
idcarta [varchar](max) NULL,
fecha [varchar](max) NULL,
idpedido [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE mesas (
id [int] IDENTITY(1,1) NOT NULL,
descripcion [varchar](max) NULL,
comentarios [varchar](max) NULL,
tipo [varchar](max) NULL,
disponibilidad [varchar](max) NULL,
cantidad [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE productos (
id [int] IDENTITY(1,1) NOT NULL,
nombre [varchar](max) NULL,
cantidad [varchar](max) NULL,
descripcion [varchar](max) NULL,
grupos [varchar](max) NULL,
zonas [varchar](max) NULL,
combos [varchar](max) NULL,
unidad de medida [varchar](max) NULL,
precio [varchar](max) NULL,
tipo de precio [varchar](max) NULL,
fechaingreso [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE pedidos (
id [int] IDENTITY(1,1) NOT NULL,
descripcion [varchar](max) NULL,
cantidad [varchar](max) NULL,
idproductos [varchar](max) NULL,
fecha [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE caja (
id [int] IDENTITY(1,1) NOT NULL,
tipo [varchar](max) NULL,
importe [varchar](max) NULL,
igv [varchar](max) NULL,
metodo_de_pago [varchar](max) NULL,
fecha [varchar](max) NULL,
activo [varchar](max) NULL,
idpedido [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE cliente_negocio (
id [int] IDENTITY(1,1) NOT NULL,
tipo_documento [varchar](max) NULL,
nombre_negocio [varchar](max) NULL,
descripcion [varchar](max) NULL,
documento [varchar](max) NULL,
direccion [varchar](max) NULL,
telefono [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE carta (
id [int] IDENTITY(1,1) NOT NULL,
producto [varchar](max) NULL,
promociones [varchar](max) NULL,
costo [varchar](max) NULL,
tipo [varchar](max) NULL,
fecha [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE personal (
id [int] IDENTITY(1,1) NOT NULL,
tipo_documento [varchar](max) NULL,
documento [varchar](max) NULL,
direccion [varchar](max) NULL,
telefono [varchar](max) NULL,
sexo [varchar](max) NULL,
cumpleaños [varchar](max) NULL,
fechaingreso [varchar](max) NULL,
fechasalida [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE recetario (
id [int] IDENTITY(1,1) NOT NULL,
idproducto [varchar](max) NULL,
nombre [varchar](max) NULL,
descripcion [varchar](max) NULL,
fecha [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE clientes (
id [int] IDENTITY(1,1) NOT NULL,
tipo_documento [varchar](max) NULL,
documento [varchar](max) NULL,
direccion [varchar](max) NULL,
telefono [varchar](max) NULL,
sexo [varchar](max) NULL,
cumpleaños [varchar](max) NULL,
fechaingreso [varchar](max) NULL,
frecuencia [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE compras (
id [int] IDENTITY(1,1) NOT NULL,
nombre [varchar](max) NULL,
descripcion [varchar](max) NULL,
precio [varchar](max) NULL,
cantidad [varchar](max) NULL,
idproveedor [varchar](max) NULL,
fecha [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE evento (
id [int] IDENTITY(1,1) NOT NULL,
nombre [varchar](max) NULL,
descripcion [varchar](max) NULL,
contenido [varchar](max) NULL,
precio [varchar](max) NULL,
fecha [varchar](max) NULL,
idlocal [varchar](max) NULL,
activo [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE proveedores (
id [int] IDENTITY(1,1) NOT NULL,
nombre [varchar](max) NULL,
descripcion [varchar](max) NULL,
fecha [varchar](max) NULL,
documento [varchar](max) NULL,
tipo [varchar](max) NULL,
tipo_documento [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE locales (
id [int] IDENTITY(1,1) NOT NULL,
nombre [varchar](max) NULL,
fechaingreso [varchar](max) NULL,
direccion [varchar](max) NULL,
idcarta [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO















