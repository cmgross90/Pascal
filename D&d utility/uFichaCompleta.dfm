object FrmFichaCompl: TFrmFichaCompl
  Left = 605
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ficha completa'
  ClientHeight = 526
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FichaComplTabN: TTabbedNotebook
    Left = 0
    Top = 0
    Width = 473
    Height = 526
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Principal'
      object TopPnl: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 4
          Top = 6
          Width = 105
          Height = 13
          Caption = 'Nome do Personagem'
        end
        object Label2: TLabel
          Left = 4
          Top = 55
          Width = 26
          Height = 13
          Caption = 'Ra'#231'a'
        end
        object Label3: TLabel
          Left = 144
          Top = 55
          Width = 45
          Height = 13
          Caption = 'Tamanho'
        end
        object Label4: TLabel
          Left = 224
          Top = 55
          Width = 27
          Height = 13
          Caption = 'Idade'
        end
        object Label5: TLabel
          Left = 284
          Top = 55
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label6: TLabel
          Left = 344
          Top = 55
          Width = 27
          Height = 13
          Caption = 'Altura'
        end
        object Label7: TLabel
          Left = 408
          Top = 55
          Width = 24
          Height = 13
          Caption = 'Peso'
        end
        object Label8: TLabel
          Left = 280
          Top = 6
          Width = 26
          Height = 13
          Caption = 'N'#237'vel'
        end
        object Label9: TLabel
          Left = 340
          Top = 6
          Width = 31
          Height = 13
          Caption = 'Classe'
        end
        object Label10: TLabel
          Left = 4
          Top = 30
          Width = 72
          Height = 13
          Caption = 'Trilha Exemplar'
        end
        object Label11: TLabel
          Left = 204
          Top = 30
          Width = 66
          Height = 13
          Caption = 'Destino '#201'pico'
        end
        object Label12: TLabel
          Left = 382
          Top = 30
          Width = 21
          Height = 13
          Caption = 'EXP'
        end
        object Label13: TLabel
          Left = 2
          Top = 79
          Width = 51
          Height = 13
          Caption = 'Tend'#234'ncia'
        end
        object Label14: TLabel
          Left = 172
          Top = 79
          Width = 48
          Height = 13
          Caption = 'Divindade'
        end
        object Edit1: TEdit
          Left = 115
          Top = 3
          Width = 158
          Height = 21
          MaxLength = 20
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 35
          Top = 52
          Width = 104
          Height = 21
          MaxLength = 15
          TabOrder = 6
        end
        object Edit3: TEdit
          Left = 192
          Top = 52
          Width = 26
          Height = 21
          MaxLength = 2
          TabOrder = 7
        end
        object Edit4: TEdit
          Left = 254
          Top = 52
          Width = 26
          Height = 21
          MaxLength = 3
          TabOrder = 8
        end
        object Edit5: TEdit
          Left = 314
          Top = 52
          Width = 26
          Height = 21
          MaxLength = 1
          TabOrder = 9
        end
        object Edit6: TEdit
          Left = 374
          Top = 52
          Width = 26
          Height = 21
          MaxLength = 4
          TabOrder = 10
        end
        object Edit7: TEdit
          Left = 435
          Top = 52
          Width = 26
          Height = 21
          MaxLength = 3
          TabOrder = 11
        end
        object edLVL: TEdit
          Left = 310
          Top = 3
          Width = 26
          Height = 21
          MaxLength = 2
          TabOrder = 1
          OnKeyUp = edLVLKeyUp
        end
        object Edit9: TEdit
          Left = 375
          Top = 3
          Width = 87
          Height = 21
          MaxLength = 15
          TabOrder = 2
        end
        object Edit10: TEdit
          Left = 80
          Top = 27
          Width = 116
          Height = 21
          MaxLength = 15
          TabOrder = 3
        end
        object Edit11: TEdit
          Left = 274
          Top = 27
          Width = 103
          Height = 21
          MaxLength = 15
          TabOrder = 4
        end
        object Edit12: TEdit
          Left = 407
          Top = 27
          Width = 54
          Height = 21
          MaxLength = 8
          TabOrder = 5
        end
        object Edit13: TEdit
          Left = 56
          Top = 76
          Width = 110
          Height = 21
          MaxLength = 15
          TabOrder = 12
        end
        object Edit14: TEdit
          Left = 225
          Top = 76
          Width = 103
          Height = 21
          MaxLength = 15
          TabOrder = 13
        end
      end
      object StatusPnl: TPanel
        Left = 0
        Top = 145
        Width = 185
        Height = 176
        TabOrder = 1
        object Label15: TLabel
          Left = 6
          Top = 31
          Width = 26
          Height = 13
          Caption = 'FOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 6
          Top = 55
          Width = 27
          Height = 13
          Caption = 'CON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 6
          Top = 79
          Width = 26
          Height = 13
          Caption = 'DEX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 6
          Top = 103
          Width = 22
          Height = 13
          Caption = 'INT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 6
          Top = 127
          Width = 25
          Height = 13
          Caption = 'SAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 6
          Top = 151
          Width = 26
          Height = 13
          Caption = 'CAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbFOR: TLabel
          Left = 80
          Top = 31
          Width = 4
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbCON: TLabel
          Left = 79
          Top = 55
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbDEX: TLabel
          Left = 79
          Top = 79
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbINT: TLabel
          Left = 79
          Top = 103
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbSAB: TLabel
          Left = 80
          Top = 127
          Width = 4
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbCAR: TLabel
          Left = 79
          Top = 151
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 16
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 67
          Top = 7
          Width = 29
          Height = 13
          Caption = 'MOD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 107
          Top = 7
          Width = 73
          Height = 13
          Caption = 'MOD+1/2 lvl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModCON: TLabel
          Left = 134
          Top = 55
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModFOR: TLabel
          Left = 134
          Top = 31
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModDEX: TLabel
          Left = 134
          Top = 79
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModINT: TLabel
          Left = 134
          Top = 103
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModSAB: TLabel
          Left = 136
          Top = 127
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbModCHA: TLabel
          Left = 134
          Top = 151
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edFOR: TEdit
          Left = 39
          Top = 28
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 0
          OnKeyUp = edFORKeyUp
        end
        object edCON: TEdit
          Left = 39
          Top = 52
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 1
          OnKeyUp = edCONKeyUp
        end
        object edDEX: TEdit
          Left = 39
          Top = 76
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 2
          OnKeyUp = edDEXKeyUp
        end
        object edINT: TEdit
          Left = 39
          Top = 100
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
          OnKeyUp = edINTKeyUp
        end
        object edSAB: TEdit
          Left = 39
          Top = 124
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 4
          OnKeyUp = edSABKeyUp
        end
        object edCAR: TEdit
          Left = 39
          Top = 148
          Width = 26
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          TabOrder = 5
          OnChange = edCARChange
        end
      end
      object IniciativaPnl: TPanel
        Left = 0
        Top = 105
        Width = 185
        Height = 41
        TabOrder = 2
        object lblIniciativa: TLabel
          Left = 4
          Top = 19
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 25
          Top = 19
          Width = 63
          Height = 16
          Caption = 'Iniciativa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDesIni: TLabel
          Left = 98
          Top = 19
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb1_2Ini: TLabel
          Left = 127
          Top = 19
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Des: TLabel
          Left = 91
          Top = 3
          Width = 23
          Height = 13
          Caption = 'Des'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 118
          Top = 3
          Width = 38
          Height = 13
          Caption = '1/2Lvl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 160
          Top = 3
          Width = 21
          Height = 13
          Caption = 'Out'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edOutIni: TEdit
          Left = 155
          Top = 18
          Width = 26
          Height = 21
          MaxLength = 2
          TabOrder = 0
          OnKeyUp = edOutIniKeyUp
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Magias'
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Equipamento'
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Talentos'
    end
  end
end
