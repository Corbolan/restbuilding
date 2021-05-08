object Form15: TForm15
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta Apartamento'
  ClientHeight = 430
  ClientWidth = 675
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
    Left = 16
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Consulta'
  end
  object Label2: TLabel
    Left = 296
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Tipo de Dado'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 659
    Height = 294
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 328
    Top = 80
    Width = 178
    Height = 25
    Caption = 'Carregar Todos Apartamentos'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 520
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 520
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Relat'#243'rio da Consulta'
    TabOrder = 3
  end
end
