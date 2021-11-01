object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 469
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 34
    Top = 77
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 34
    Top = 109
    Width = 92
    Height = 13
    Caption = 'Tipo de Documento'
  end
  object Label4: TLabel
    Left = 34
    Top = 296
    Width = 62
    Height = 13
    Caption = 'Valor Activos'
  end
  object Label5: TLabel
    Left = 35
    Top = 139
    Width = 94
    Height = 13
    Caption = 'N'#250'mero Documento'
  end
  object Label6: TLabel
    Left = 35
    Top = 168
    Width = 100
    Height = 13
    Caption = 'Representante Legal'
  end
  object Label7: TLabel
    Left = 35
    Top = 200
    Width = 47
    Height = 13
    Caption = 'Tel'#233'fonos'
  end
  object Label8: TLabel
    Left = 34
    Top = 264
    Width = 86
    Height = 13
    Caption = 'Persona Contacto'
  end
  object Label9: TLabel
    Left = 35
    Top = 232
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label10: TLabel
    Left = 35
    Top = 328
    Width = 63
    Height = 13
    Caption = 'Valor Pasivos'
  end
  object Label11: TLabel
    Left = 35
    Top = 360
    Width = 77
    Height = 13
    Caption = 'Valor Patrimonio'
  end
  object Button1: TButton
    Left = 34
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 130
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 226
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 322
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 192
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 192
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 192
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 192
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 192
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit6: TEdit
    Left = 192
    Top = 197
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit7: TEdit
    Left = 192
    Top = 357
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit8: TEdit
    Left = 192
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit9: TEdit
    Left = 192
    Top = 293
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit10: TEdit
    Left = 192
    Top = 261
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Edit11: TEdit
    Left = 192
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object DBGrid1: TDBGrid
    Left = 360
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    Params.Strings = (
      'SchemaOverride=%.dbo'
      'DriverUnit=Data.DBXMsSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXMSSQLDriver200.b' +
        'pl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=20.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'VendorLibWin64=sqlncli10.dll'
      'HostName=LocalHost'
      'Database=DigitalWareBD'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True')
    Left = 600
    Top = 152
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from cliente')
    SQLConnection = SQLConnection1
    Left = 600
    Top = 304
  end
  object SQLConnection2: TSQLConnection
    Left = 584
    Top = 240
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 496
    Top = 272
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 512
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 456
    Top = 184
  end
end
