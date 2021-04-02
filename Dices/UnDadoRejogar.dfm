object FrmSelecionar: TFrmSelecionar
  Left = 223
  Top = 142
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Escolha os Dados'
  ClientHeight = 221
  ClientWidth = 137
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblTitulo1: TLabel
    Left = 8
    Top = 8
    Width = 126
    Height = 13
    Caption = 'Selecione o(s) dado(s) que'
  end
  object LblTitulo2: TLabel
    Left = 16
    Top = 24
    Width = 113
    Height = 13
    Caption = 'deseja jogar novamente'
  end
  object CBDado1: TCheckBox
    Left = 24
    Top = 58
    Width = 97
    Height = 17
    Caption = 'Dado 1'
    TabOrder = 0
  end
  object CBDado2: TCheckBox
    Left = 24
    Top = 82
    Width = 97
    Height = 17
    Caption = 'Dado 2'
    TabOrder = 1
  end
  object CBDado3: TCheckBox
    Left = 24
    Top = 106
    Width = 97
    Height = 17
    Caption = 'Dado 3'
    TabOrder = 2
  end
  object CBDado4: TCheckBox
    Left = 24
    Top = 130
    Width = 97
    Height = 17
    Caption = 'Dado 4'
    TabOrder = 3
  end
  object CBDado5: TCheckBox
    Left = 24
    Top = 154
    Width = 97
    Height = 17
    Caption = 'Dado 5'
    TabOrder = 4
  end
  object BtnJogar2: TButton
    Left = 24
    Top = 186
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 5
    OnClick = BtnJogar2Click
  end
end
