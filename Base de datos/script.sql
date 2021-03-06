USE [DigitalWareBD]
GO
/****** Object:  Table [dbo].[clientes_dw]    Script Date: 1/11/2021 1:02:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes_dw](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NULL,
	[tipo_documento_identificacion] [varchar](255) NULL,
	[numero_documento_identificacion] [varchar](255) NULL,
	[nombre_representante_legal] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[persona_contacto] [varchar](255) NULL,
	[valor_activos] [decimal](18, 0) NULL,
	[valor_pasivos] [decimal](18, 0) NULL,
	[valor_patrimonio] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
