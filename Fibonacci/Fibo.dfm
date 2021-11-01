object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Fibonacci DW'
  ClientHeight = 246
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 67
    Width = 153
    Height = 13
    Caption = 'N'#250'mero Final Fibonacci a buscar'
  end
  object txtTermino: TEdit
    Left = 240
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 120
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 320
    Top = 8
    Width = 217
    Height = 217
    ItemHeight = 13
    TabOrder = 2
  end
end
