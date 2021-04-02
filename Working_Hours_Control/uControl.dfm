object FrmControl: TFrmControl
  Left = 434
  Top = 254
  Width = 641
  Height = 342
  Caption = 'Time Control'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 306
    Top = 0
    Width = 319
    Height = 136
    Align = alRight
    TabOrder = 0
    object LbBalance: TLabel
      Left = 65
      Top = 13
      Width = 190
      Height = 32
      Caption = 'Hour Balance'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LbHour: TLabel
      Left = 122
      Top = 65
      Width = 62
      Height = 32
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object SGrid: TStringGrid
    Left = 0
    Top = 136
    Width = 625
    Height = 167
    Align = alBottom
    ColCount = 7
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 306
    Height = 136
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 195
      Top = 20
      Width = 37
      Height = 13
      Caption = 'Hour:'
    end
    object RGroup: TRadioGroup
      Left = 9
      Top = 13
      Width = 176
      Height = 118
      ItemIndex = 0
      Items.Strings = (
        'Arrival Time'
        'Lunch time start'
        'Lunch time finish'
        'Departure time')
      TabOrder = 0
    end
    object BtnInsertTime: TButton
      Left = 195
      Top = 46
      Width = 93
      Height = 20
      Caption = 'Insert Time'
      TabOrder = 1
      OnClick = BtnInsertTimeClick
    end
    object EdTime: TMaskEdit
      Left = 240
      Top = 16
      Width = 47
      Height = 24
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 2
      Text = '  :  '
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Hour_Balance'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir]
    Left = 584
    Top = 8
  end
end
