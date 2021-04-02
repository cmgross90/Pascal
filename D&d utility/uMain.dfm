object FrmMain: TFrmMain
  Left = 870
  Top = 214
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mostrador de HP'
  ClientHeight = 462
  ClientWidth = 908
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 462
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 906
      Height = 72
      Align = alTop
      TabOrder = 0
      object LbQtdPlayers: TLabel
        Left = 8
        Top = 12
        Width = 73
        Height = 13
        Caption = 'N'#186' Players (1-6)'
      end
      object LbQtdNPCs: TLabel
        Left = 8
        Top = 44
        Width = 72
        Height = 13
        Caption = 'N'#186' NPCs (1-14)'
      end
      object EdQtdPlayers: TEdit
        Left = 96
        Top = 8
        Width = 57
        Height = 21
        TabOrder = 0
      end
      object EdQtdNPCs: TEdit
        Left = 96
        Top = 40
        Width = 57
        Height = 21
        TabOrder = 1
      end
      object BtnShowPlayers: TButton
        Left = 160
        Top = 6
        Width = 97
        Height = 25
        Caption = 'Mostrar Players'
        TabOrder = 2
        OnClick = BtnShowPlayersClick
      end
      object BtnShowNPCs: TButton
        Left = 160
        Top = 38
        Width = 97
        Height = 25
        Caption = 'Mostrar NPCs'
        TabOrder = 3
        OnClick = BtnShowNPCsClick
      end
      object BtnAltNumPlay: TButton
        Left = 304
        Top = 6
        Width = 105
        Height = 25
        Caption = 'Alterar N'#186' Players'
        TabOrder = 4
        Visible = False
        OnClick = BtnAltNumPlayClick
      end
      object BtnAltNumNPCs: TButton
        Left = 304
        Top = 38
        Width = 105
        Height = 25
        Caption = 'Alterar N'#186' NPCs'
        TabOrder = 5
        Visible = False
        OnClick = BtnAltNumNPCsClick
      end
      object Button1: TButton
        Left = 656
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 6
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 448
      Top = 73
      Width = 459
      Height = 388
      Align = alRight
      TabOrder = 1
      object LbNPC1: TLabel
        Left = 8
        Top = 36
        Width = 31
        Height = 13
        Caption = 'NPC 1'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC2: TLabel
        Left = 8
        Top = 60
        Width = 31
        Height = 13
        Caption = 'NPC 2'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC3: TLabel
        Left = 8
        Top = 84
        Width = 31
        Height = 13
        Caption = 'NPC 3'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC4: TLabel
        Left = 8
        Top = 108
        Width = 31
        Height = 13
        Caption = 'NPC 4'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC5: TLabel
        Left = 8
        Top = 132
        Width = 31
        Height = 13
        Caption = 'NPC 5'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC6: TLabel
        Left = 8
        Top = 156
        Width = 31
        Height = 13
        Caption = 'NPC 6'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC7: TLabel
        Left = 8
        Top = 180
        Width = 31
        Height = 13
        Caption = 'NPC 7'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC8: TLabel
        Left = 8
        Top = 204
        Width = 31
        Height = 13
        Caption = 'NPC 8'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC9: TLabel
        Left = 8
        Top = 228
        Width = 31
        Height = 13
        Caption = 'NPC 9'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC10: TLabel
        Left = 8
        Top = 252
        Width = 37
        Height = 13
        Caption = 'NPC 10'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC11: TLabel
        Left = 8
        Top = 276
        Width = 37
        Height = 13
        Caption = 'NPC 11'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC12: TLabel
        Left = 8
        Top = 300
        Width = 37
        Height = 13
        Caption = 'NPC 12'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC13: TLabel
        Left = 8
        Top = 324
        Width = 37
        Height = 13
        Caption = 'NPC 13'
        Visible = False
        OnDblClick = LblClick
      end
      object LbNPC14: TLabel
        Left = 8
        Top = 349
        Width = 37
        Height = 13
        Caption = 'NPC 14'
        Visible = False
        OnDblClick = LblClick
      end
      object lbHPAtualNPC: TLabel
        Left = 156
        Top = 10
        Width = 42
        Height = 13
        Caption = 'HP Atual'
        Visible = False
      end
      object lbHPMaxNPC: TLabel
        Left = 96
        Top = 11
        Width = 38
        Height = 13
        Caption = 'HP Max'
        Visible = False
      end
      object GgNPC6: TGauge
        Left = 216
        Top = 153
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC1: TGauge
        Left = 216
        Top = 33
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC2: TGauge
        Left = 216
        Top = 57
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC3: TGauge
        Left = 216
        Top = 81
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC4: TGauge
        Left = 216
        Top = 105
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC5: TGauge
        Left = 216
        Top = 129
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC12: TGauge
        Left = 216
        Top = 297
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC7: TGauge
        Left = 216
        Top = 177
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC8: TGauge
        Left = 216
        Top = 201
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC9: TGauge
        Left = 216
        Top = 225
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC10: TGauge
        Left = 216
        Top = 249
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC11: TGauge
        Left = 216
        Top = 273
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC13: TGauge
        Left = 216
        Top = 321
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgNPC14: TGauge
        Left = 216
        Top = 345
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object Label1: TLabel
        Left = 420
        Top = 372
        Width = 35
        Height = 13
        Caption = 'V. 1.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdMaxHpNPCs1: TEdit
        Left = 88
        Top = 32
        Width = 53
        Height = 21
        TabOrder = 0
        Visible = False
      end
      object EdMaxHpNPCs2: TEdit
        Left = 88
        Top = 56
        Width = 53
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object EdMaxHpNPCs3: TEdit
        Left = 88
        Top = 80
        Width = 53
        Height = 21
        TabOrder = 2
        Visible = False
      end
      object EdMaxHpNPCs4: TEdit
        Left = 88
        Top = 104
        Width = 53
        Height = 21
        TabOrder = 3
        Visible = False
      end
      object EdMaxHpNPCs5: TEdit
        Left = 88
        Top = 128
        Width = 53
        Height = 21
        TabOrder = 4
        Visible = False
      end
      object EdMaxHpNPCs6: TEdit
        Left = 88
        Top = 152
        Width = 53
        Height = 21
        TabOrder = 5
        Visible = False
      end
      object EdMaxHpNPCs7: TEdit
        Left = 88
        Top = 176
        Width = 53
        Height = 21
        TabOrder = 6
        Visible = False
      end
      object EdMaxHpNPCs8: TEdit
        Left = 88
        Top = 200
        Width = 53
        Height = 21
        TabOrder = 7
        Visible = False
      end
      object EdMaxHpNPCs9: TEdit
        Left = 88
        Top = 224
        Width = 53
        Height = 21
        TabOrder = 8
        Visible = False
      end
      object EdMaxHpNPCs10: TEdit
        Left = 88
        Top = 248
        Width = 53
        Height = 21
        TabOrder = 9
        Visible = False
      end
      object EdMaxHpNPCs11: TEdit
        Left = 88
        Top = 272
        Width = 53
        Height = 21
        TabOrder = 10
        Visible = False
      end
      object EdMaxHpNPCs12: TEdit
        Left = 88
        Top = 296
        Width = 53
        Height = 21
        TabOrder = 11
        Visible = False
      end
      object EdMaxHpNPCs13: TEdit
        Left = 88
        Top = 320
        Width = 53
        Height = 21
        TabOrder = 12
        Visible = False
      end
      object EdMaxHpNPCs14: TEdit
        Left = 88
        Top = 344
        Width = 53
        Height = 21
        TabOrder = 13
        Visible = False
      end
      object EdHpAtuNPCs1: TEdit
        Left = 152
        Top = 32
        Width = 53
        Height = 21
        TabOrder = 14
        Visible = False
      end
      object EdHpAtuNPCs2: TEdit
        Left = 152
        Top = 56
        Width = 53
        Height = 21
        TabOrder = 15
        Visible = False
      end
      object EdHpAtuNPCs3: TEdit
        Left = 152
        Top = 80
        Width = 53
        Height = 21
        TabOrder = 16
        Visible = False
      end
      object EdHpAtuNPCs4: TEdit
        Left = 152
        Top = 104
        Width = 53
        Height = 21
        TabOrder = 17
        Visible = False
      end
      object EdHpAtuNPCs5: TEdit
        Left = 152
        Top = 128
        Width = 53
        Height = 21
        TabOrder = 18
        Visible = False
      end
      object EdHpAtuNPCs6: TEdit
        Left = 152
        Top = 152
        Width = 53
        Height = 21
        TabOrder = 19
        Visible = False
      end
      object EdHpAtuNPCs7: TEdit
        Left = 152
        Top = 176
        Width = 53
        Height = 21
        TabOrder = 20
        Visible = False
      end
      object EdHpAtuNPCs8: TEdit
        Left = 152
        Top = 200
        Width = 53
        Height = 21
        TabOrder = 21
        Visible = False
      end
      object EdHpAtuNPCs9: TEdit
        Left = 152
        Top = 224
        Width = 53
        Height = 21
        TabOrder = 22
        Visible = False
      end
      object EdHpAtuNPCs10: TEdit
        Left = 152
        Top = 248
        Width = 53
        Height = 21
        TabOrder = 23
        Visible = False
      end
      object EdHpAtuNPCs11: TEdit
        Left = 152
        Top = 272
        Width = 53
        Height = 21
        TabOrder = 24
        Visible = False
      end
      object EdHpAtuNPCs12: TEdit
        Left = 152
        Top = 296
        Width = 53
        Height = 21
        TabOrder = 25
        Visible = False
      end
      object EdHpAtuNPCs13: TEdit
        Left = 152
        Top = 320
        Width = 53
        Height = 21
        TabOrder = 26
        Visible = False
      end
      object EdHpAtuNPCs14: TEdit
        Left = 152
        Top = 344
        Width = 53
        Height = 21
        TabOrder = 27
        Visible = False
      end
      object BtnAtualizarNPCs: TButton
        Left = 368
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 28
        Visible = False
        OnClick = BtnAtualizarNPCsClick
      end
      object BtnGravarNPCs: TButton
        Left = 368
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 29
        Visible = False
        OnClick = BtnGravarNPCsClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 73
      Width = 447
      Height = 388
      Align = alClient
      TabOrder = 2
      object LbPlayer1: TLabel
        Left = 8
        Top = 36
        Width = 68
        Height = 13
        Caption = 'Personagem 1'
        Visible = False
        OnDblClick = LblClick
      end
      object LbPlayer2: TLabel
        Left = 8
        Top = 60
        Width = 68
        Height = 13
        Caption = 'Personagem 2'
        Visible = False
        OnDblClick = LblClick
      end
      object LbPlayer3: TLabel
        Left = 8
        Top = 84
        Width = 68
        Height = 13
        Caption = 'Personagem 3'
        Visible = False
        OnDblClick = LblClick
      end
      object LbPlayer4: TLabel
        Left = 8
        Top = 108
        Width = 68
        Height = 13
        Caption = 'Personagem 4'
        Visible = False
        OnDblClick = LblClick
      end
      object LbPlayer5: TLabel
        Left = 8
        Top = 132
        Width = 68
        Height = 13
        Caption = 'Personagem 5'
        Visible = False
        OnDblClick = LblClick
      end
      object LbPlayer6: TLabel
        Left = 8
        Top = 156
        Width = 68
        Height = 13
        Caption = 'Personagem 6'
        Visible = False
        OnDblClick = LblClick
      end
      object lbHpMaxPlayer: TLabel
        Left = 96
        Top = 11
        Width = 38
        Height = 13
        Caption = 'HP Max'
        Visible = False
      end
      object lbHpAtualPlayer: TLabel
        Left = 156
        Top = 10
        Width = 42
        Height = 13
        Caption = 'HP Atual'
        Visible = False
      end
      object GgPlayer1: TGauge
        Left = 224
        Top = 33
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgPlayer2: TGauge
        Left = 224
        Top = 57
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgPlayer3: TGauge
        Left = 224
        Top = 81
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgPlayer4: TGauge
        Left = 224
        Top = 105
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgPlayer5: TGauge
        Left = 224
        Top = 129
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object GgPlayer6: TGauge
        Left = 224
        Top = 153
        Width = 100
        Height = 17
        ForeColor = clGreen
        Progress = 0
        Visible = False
      end
      object EdMaxHPPlayer1: TEdit
        Left = 88
        Top = 32
        Width = 53
        Height = 21
        TabOrder = 0
        Visible = False
      end
      object EdHPPlayer1: TEdit
        Left = 152
        Top = 32
        Width = 53
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object EdMaxHPPlayer2: TEdit
        Left = 88
        Top = 56
        Width = 53
        Height = 21
        TabOrder = 2
        Visible = False
      end
      object EdHPPlayer2: TEdit
        Left = 152
        Top = 56
        Width = 53
        Height = 21
        TabOrder = 3
        Visible = False
      end
      object EdMaxHPPlayer3: TEdit
        Left = 88
        Top = 80
        Width = 53
        Height = 21
        TabOrder = 4
        Visible = False
      end
      object EdHPPlayer3: TEdit
        Left = 152
        Top = 80
        Width = 53
        Height = 21
        TabOrder = 5
        Visible = False
      end
      object EdMaxHPPlayer4: TEdit
        Left = 88
        Top = 104
        Width = 53
        Height = 21
        TabOrder = 6
        Visible = False
      end
      object EdHPPlayer4: TEdit
        Left = 152
        Top = 104
        Width = 53
        Height = 21
        TabOrder = 7
        Visible = False
      end
      object EdMaxHPPlayer5: TEdit
        Left = 88
        Top = 128
        Width = 53
        Height = 21
        TabOrder = 8
        Visible = False
      end
      object EdHPPlayer5: TEdit
        Left = 152
        Top = 128
        Width = 53
        Height = 21
        TabOrder = 9
        Visible = False
      end
      object EdMaxHPPlayer6: TEdit
        Left = 88
        Top = 152
        Width = 53
        Height = 21
        TabOrder = 10
        Visible = False
      end
      object EdHPPlayer6: TEdit
        Left = 152
        Top = 152
        Width = 53
        Height = 21
        TabOrder = 11
        Visible = False
      end
      object BtnGravarPlayer: TButton
        Left = 360
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 12
        Visible = False
        OnClick = BtnGravarPlayerClick
      end
      object BtnAtualizarPlayer: TButton
        Left = 360
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 13
        Visible = False
        OnClick = BtnAtualizarPlayerClick
      end
    end
  end
end
