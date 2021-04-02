object FrmChangeName: TFrmChangeName
  Left = 916
  Top = 407
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alterar o nome'
  ClientHeight = 80
  ClientWidth = 186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LbName: TLabel
    Left = 8
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object BtnChange: TButton
    Left = 56
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Alterar'
    Default = True
    TabOrder = 0
    OnClick = BtnChangeClick
  end
  object EdName: TEdit
    Left = 48
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
