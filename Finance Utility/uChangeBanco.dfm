object mudar_banco_frm: Tmudar_banco_frm
  Left = 753
  Top = 429
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o do banco'
  ClientHeight = 83
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 19
    Width = 31
    Height = 13
    Caption = 'Banco'
  end
  object banco_cb: TDBComboBox
    Left = 64
    Top = 16
    Width = 233
    Height = 21
    DataField = 'CD_BANCO'
    DataSource = bancosDS
    ItemHeight = 13
    TabOrder = 0
    OnClick = banco_cbClick
  end
  object selecionar_btn: TButton
    Left = 120
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 1
    OnClick = selecionar_btnClick
  end
  object bancosDS: TDataSource
    DataSet = bancos_tb
    Left = 225
    Top = 41
  end
  object bancos_tb: TTable
    AutoRefresh = True
    DatabaseName = 'FinDB'
    SessionName = 'Default'
    TableName = 'BANCOS'
    Left = 257
    Top = 41
  end
end
