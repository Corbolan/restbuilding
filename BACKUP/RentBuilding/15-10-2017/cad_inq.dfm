object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Inquilino'
  ClientHeight = 517
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  DesignSize = (
    967
    517)
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 964
    Height = 517
    Anchors = [akLeft, akTop, akRight, akBottom]
    MultiLine = True
    TabOrder = 0
    Tabs.Strings = (
      'Cadastro Informa'#231#245'es'
      'Cadastro Documentos'
      'Cadastro Telefone'
      'Cadastro Contrato')
    TabIndex = 0
    object DBGrid1: TDBGrid
      Left = 64
      Top = 312
      Width = 833
      Height = 185
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 472
    Top = 248
  end
end
