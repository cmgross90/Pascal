object menu_frm: Tmenu_frm
  Left = 383
  Top = 122
  Width = 836
  Height = 292
  Caption = 'Gerenciador de finan'#231'as'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = menu_principal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object menu_principal: TMainMenu
    Left = 720
    Top = 8
    object Cadastros_mi: TMenuItem
      Caption = '&Cadastros'
      object Bancos_mi: TMenuItem
        Caption = '&Bancos'
        OnClick = Bancos_miClick
      end
      object Agencias_mi: TMenuItem
        Caption = 'A&gencias'
        OnClick = Agencias_miClick
      end
      object Contas_mi: TMenuItem
        Caption = 'Con&tas'
        OnClick = Contas_miClick
      end
    end
    object Movimentos_mi: TMenuItem
      Caption = '&Movimentos'
      OnClick = Movimentos_miClick
    end
    object Relatrios_mi: TMenuItem
      Caption = '&Relat'#243'rios'
    end
    object Ajuda_mi: TMenuItem
      Caption = '&Ajuda'
      object Sobremi1: TMenuItem
        Caption = 'S&obre_mi'
      end
    end
    object Sair_mi: TMenuItem
      Caption = '&Sair'
    end
  end
  object DB: TDatabase
    AliasName = 'FinDB'
    Connected = True
    DatabaseName = 'FinDB'
    Params.Strings = (
      'USER NAME=alemao')
    SessionName = 'Default'
    Left = 688
    Top = 8
  end
end
