object Form1: TForm1
  Left = 194
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Roman Algorithm Conversor'
  ClientHeight = 169
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object LblResult: TLabel
    Left = 22
    Top = 80
    Width = 475
    Height = 13
    Alignment = taCenter
    AutoSize = False
  end
  object BtnTranslate: TButton
    Left = 200
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Translate'
    TabOrder = 0
    OnClick = BtnTranslateClick
  end
  object EdValue: TEdit
    Left = 176
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
