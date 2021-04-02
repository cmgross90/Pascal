object cadastro_contas_frm: Tcadastro_contas_frm
  Left = 493
  Top = 207
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contas'
  ClientHeight = 307
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 81
    Top = 112
    Width = 89
    Height = 13
    Caption = 'C'#243'digo da ag'#234'ncia'
  end
  object Campos_pnl: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 307
    Align = alClient
    TabOrder = 0
    object Codigo_banco_lb: TLabel
      Left = 89
      Top = 27
      Width = 81
      Height = 13
      Caption = 'C'#243'digo do banco'
    end
    object cd_agencia_lb: TLabel
      Left = 81
      Top = 56
      Width = 89
      Height = 13
      Caption = 'C'#243'digo da ag'#234'ncia'
    end
    object Nm_banco_dbtxt: TDBText
      Left = 256
      Top = 27
      Width = 3
      Height = 13
      AutoSize = True
      DataField = 'NM_BANCO'
      DataSource = contasDS
    end
    object nm_agencia_dbtxt: TDBText
      Left = 256
      Top = 55
      Width = 3
      Height = 13
      AutoSize = True
      DataField = 'NM_AGENCIA'
      DataSource = contasDS
    end
    object tipo_conta_lb: TLabel
      Left = 103
      Top = 83
      Width = 66
      Height = 13
      Caption = 'Tipo da conta'
    end
    object nr_conta_lb: TLabel
      Left = 87
      Top = 111
      Width = 82
      Height = 13
      Caption = 'N'#250'mero da conta'
    end
    object Label1: TLabel
      Left = 111
      Top = 139
      Width = 56
      Height = 13
      Caption = 'Saldo inicial'
    end
    object cd_banco_dbedt: TDBEdit
      Left = 176
      Top = 24
      Width = 73
      Height = 21
      DataField = 'CD_BANCO'
      DataSource = contasDS
      Enabled = False
      MaxLength = 3
      TabOrder = 0
    end
    object cd_agencia_dbedt: TDBEdit
      Left = 176
      Top = 52
      Width = 73
      Height = 21
      DataField = 'CD_AGENCIA'
      DataSource = contasDS
      Enabled = False
      MaxLength = 4
      TabOrder = 1
    end
    object tipo_conta_dbcb: TDBComboBox
      Left = 176
      Top = 80
      Width = 153
      Height = 21
      DataField = 'TIPO_CONTA'
      DataSource = contasDS
      Enabled = False
      ItemHeight = 13
      Items.Strings = (
        'Corrente'
        'Poupan'#231'a'
        'Investimento')
      TabOrder = 2
    end
    object saldo_inicial_dbedt: TDBEdit
      Left = 176
      Top = 135
      Width = 113
      Height = 21
      DataField = 'NR_SALDO_INICIAL'
      DataSource = contasDS
      Enabled = False
      MaxLength = 10
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 177
      Width = 505
      Height = 129
      Align = alBottom
      DataSource = contasDS
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CD_BANCO'
          Title.Caption = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_AGENCIA'
          Title.Caption = 'Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_CONTA'
          Title.Caption = 'Tipo da conta'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_CONTA'
          Title.Caption = 'N'#250'mero da conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_SALDO_INICIAL'
          Title.Caption = 'Saldo inicial'
          Visible = True
        end>
    end
    object nr_conta_dbedt: TDBEdit
      Left = 176
      Top = 108
      Width = 73
      Height = 21
      DataField = 'NR_CONTA'
      DataSource = contasDS
      Enabled = False
      MaxLength = 4
      TabOrder = 3
    end
  end
  object Navegador_pnl: TPanel
    Left = 507
    Top = 0
    Width = 149
    Height = 307
    Align = alRight
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 24
      Width = 112
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Help_btn: TBitBtn
      Left = 16
      Top = 224
      Width = 113
      Height = 33
      Caption = '&Ajuda'
      TabOrder = 1
      Kind = bkHelp
    end
    object Fechar_btn: TBitBtn
      Left = 16
      Top = 264
      Width = 113
      Height = 33
      Caption = '&Sair'
      TabOrder = 2
      OnClick = Fechar_btnClick
      Kind = bkClose
    end
    object Cancelar_btn: TBitBtn
      Left = 16
      Top = 184
      Width = 113
      Height = 33
      Cancel = True
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = Cancelar_btnClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Inserir_btn: TBitBtn
      Left = 16
      Top = 104
      Width = 113
      Height = 33
      Caption = '&Novo'
      TabOrder = 4
      OnClick = Inserir_btnClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Salvar_btn: TBitBtn
      Left = 16
      Top = 144
      Width = 113
      Height = 33
      Caption = 'Sal&var'
      TabOrder = 5
      OnClick = Salvar_btnClick
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFEFF8FFF0F8FFF1F9FFF3F8FCF3F7FBF2F7FBF1F6FAF1F5F9F0F5F8F0F5
        F8F0F4F8F0F6FAF1F9FFF0F8FFEFF8FEFDFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        AC8275924728934C2F944928824D448E5D559260578E5C5492605795635B9765
        5C98675F946055914625934C2F954B2C653734E9F2FAFFFFFF00FFFFFFC4987F
        E97F1FF3983EF39840F58E2CAA9C95585F645D6263C4C8CBEDF1F4FCFFFFFFFF
        FFFFFFFFF6E7DDEA8220F39841F1963ED57330663734FDFFFF00FFFFFFD98A49
        F19439EE943DEE9640F28B2CAA9A92303234313131BCBCBCEAEAEAF7F7F7FEFE
        FEFFFFFFF0DED3E68021EF963FEF953DF1943C944A2AEFF8FF00FFFFFFD88D4E
        F09136EE933BEE943FF28B2CAA9A92313436343434BDBDBDEAEAEAF7F7F7FDFD
        FDFFFFFFF0DED3E67E20EE943EEE933BF2953A934B2CF0F9FF00FFFFFFD88C4E
        EE9134EC9139EE933CF28A2AA99A932B2F322C2D2EBABCBDEAEBECF7F9FAFEFF
        FFFFFFFFF1E0D6E67E1EEF943CEC9239F19438924B2CF0F9FF00FFFFFFD88B4D
        EE9032ED9137ED933AEF8828A6958F989B9FA3A3A6C9C9CCE3E3E4F3EEECF7F1
        EFF9F5F5EAD4C9E57F1EED923AED9138F19237924B2BF0F9FF00FFFFFFD88A4D
        EE8E2FED8E34EC9037EC9138E87C1DEB7E1CEA7E1CE57817E17515DF7414DF74
        14DE7110DF7415EC8F37EC8F36ED8F34F19133924B2BF0F9FF00FFFFFFD88A4B
        EE8C2DED8E33ED8E33ED8F34EE8F33EE9035EE9136EE9136EE9137EE9238EE93
        38EE9035EE8F33ED8E34ED8E32ED8E33F18F3092492AF0FAFF00FFFFFFD88A4B
        EE8C2BEC8D30EC8725EC8725EC8727EC8928EC8A2AEC8A29EC892BEC8B2CEC8B
        2CEC8828EC8727EC8725EC8626ED8E30F18F2F92492BF0FAFF00FFFFFFD88B4D
        EE8C2DED8C2FF2C291F1BD8AF1BE8BF1BF8BF1BF8CF1BF8CF1C08DF1C08DF1C0
        8DF1BF8CF1BE8BF1BD8AF2C291ED8C2FF18F31924A2AF0FAFF00FFFFFFD88C4E
        EE9035EE8F33EDFEFFE6EDF3E7EDF3E7EDF3E7EDF3E7EDF3E7EDF3E7EDF3E7ED
        F3E7EDF3E7EDF3E6EDF3EDFEFFEE8F33F19438924B2CF0F9FF00FFFFFFD88C52
        EF953FED923BF7FFFFF4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F5F7FFFFEE933BF29A43934C2FF0F9FF00FFFFFFD98F54
        F09B47EF9944EFF7FFE8E8E8E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E8E8E8EEF7FFF09944F39D4B934E30F0F9FF00FFFFFFD99057
        F0A050EF9C4CF4FCFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFF4FCFFF09D4CF3A353934E33F0F9FF00FFFFFFD9925A
        F1A75EF0A45AF2F9FFEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDF2F9FFF1A55BF4AA61935136F0F9FE00FFFFFFD99662
        F4B476F2B272F0F6FDEAEAEAEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEAEAEAF0F6FDF3B272F6B87994533CF0F8FD00FFFFFFDB9865
        F7C492F4BE89F6FCFFF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F6FCFFF4BE89F9C79494533EEFF6FC00FFFFFFDDAE8C
        EEB178FBCB9BEFF9FFE9EEF1E9EFF2E9EFF2E9EFF2E9EFF2E9EFF2E9EFF2E9EF
        F2E9EFF2E9EFF2E9EEF1EFF9FFFBCB9BF1B27BAB8072FFFFFF00FFFFFFFFFFFF
        DEAE8DDB9967DFB090DFB08EDFB08EDFB08EDFB08EDFB08EDFB08EDFB08EDFB0
        8EDFB08EDFB08EDFB08EDFB090DC9B69C4967CFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
  end
  object agenciasDS: TDataSource
    DataSet = agencias_tbl
    Left = 432
    Top = 40
  end
  object agencias_tbl: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'FinDB'
    SessionName = 'Default'
    TableName = 'AGENCIAS'
    Left = 464
    Top = 40
  end
  object Bancos_tbl: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'FinDB'
    SessionName = 'Default'
    TableName = 'BANCOS'
    Left = 464
    Top = 72
  end
  object BancosDS: TDataSource
    DataSet = Bancos_tbl
    Left = 432
    Top = 72
  end
  object contas_tbl: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'FinDB'
    SessionName = 'Default'
    TableName = 'CONTAS'
    Left = 464
    Top = 8
    object contas_tblCD_BANCO: TSmallintField
      FieldName = 'CD_BANCO'
    end
    object contas_tblCD_AGENCIA: TSmallintField
      FieldName = 'CD_AGENCIA'
    end
    object contas_tblTIPO_CONTA: TStringField
      DisplayWidth = 15
      FieldName = 'TIPO_CONTA'
      Required = True
      Size = 15
    end
    object contas_tblNR_CONTA: TStringField
      FieldName = 'NR_CONTA'
      Required = True
      Size = 15
    end
    object contas_tblNR_SALDO_INICIAL: TIntegerField
      FieldName = 'NR_SALDO_INICIAL'
    end
    object contas_tblNM_BANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'NM_BANCO'
      LookupDataSet = Bancos_tbl
      LookupKeyFields = 'CD_BANCO'
      LookupResultField = 'NM_BANCO'
      KeyFields = 'CD_BANCO'
      Size = 255
      Lookup = True
    end
    object contas_tblNM_AGENCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'NM_AGENCIA'
      LookupDataSet = agencias_tbl
      LookupKeyFields = 'CD_AGENCIA'
      LookupResultField = 'NM_AGENCIA'
      KeyFields = 'CD_AGENCIA'
      Size = 50
      Lookup = True
    end
  end
  object contasDS: TDataSource
    DataSet = contas_tbl
    Left = 432
    Top = 8
  end
end
