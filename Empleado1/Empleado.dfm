object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora de Salario'
  ClientHeight = 189
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 86
    Height = 13
    Caption = 'Nombre Empleado'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 81
    Height = 13
    Caption = 'Horas Laboradas'
  end
  object Button1: TButton
    Left = 144
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TEdit_Name: TEdit
    Left = 144
    Top = 21
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object TEdit_Horas: TEdit
    Left = 144
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
