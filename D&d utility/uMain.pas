unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ExtCtrls, uChangeName;

type
  TFrmMain = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    EdMaxHpNPCs1: TEdit;
    LbNPC1: TLabel;
    EdMaxHpNPCs2: TEdit;
    LbNPC2: TLabel;
    EdMaxHpNPCs3: TEdit;
    LbNPC3: TLabel;
    EdMaxHpNPCs4: TEdit;
    LbNPC4: TLabel;
    EdMaxHpNPCs5: TEdit;
    LbNPC5: TLabel;
    EdMaxHpNPCs6: TEdit;
    LbNPC6: TLabel;
    EdMaxHpNPCs7: TEdit;
    LbNPC7: TLabel;
    EdMaxHpNPCs8: TEdit;
    LbNPC8: TLabel;
    EdMaxHpNPCs9: TEdit;
    LbNPC9: TLabel;
    EdMaxHpNPCs10: TEdit;
    LbNPC10: TLabel;
    EdMaxHpNPCs11: TEdit;
    LbNPC11: TLabel;
    EdMaxHpNPCs12: TEdit;
    LbNPC12: TLabel;
    EdMaxHpNPCs13: TEdit;
    LbNPC13: TLabel;
    EdMaxHpNPCs14: TEdit;
    LbNPC14: TLabel;
    EdHpAtuNPCs1: TEdit;
    EdHpAtuNPCs2: TEdit;
    EdHpAtuNPCs3: TEdit;
    EdHpAtuNPCs4: TEdit;
    EdHpAtuNPCs5: TEdit;
    EdHpAtuNPCs6: TEdit;
    EdHpAtuNPCs7: TEdit;
    EdHpAtuNPCs8: TEdit;
    EdHpAtuNPCs9: TEdit;
    EdHpAtuNPCs10: TEdit;
    EdHpAtuNPCs11: TEdit;
    EdHpAtuNPCs12: TEdit;
    EdHpAtuNPCs13: TEdit;
    EdHpAtuNPCs14: TEdit;
    lbHPAtualNPC: TLabel;
    lbHPMaxNPC: TLabel;
    LbPlayer1: TLabel;
    EdMaxHPPlayer1: TEdit;
    EdHPPlayer1: TEdit;
    LbPlayer2: TLabel;
    EdMaxHPPlayer2: TEdit;
    EdHPPlayer2: TEdit;
    LbPlayer3: TLabel;
    EdMaxHPPlayer3: TEdit;
    EdHPPlayer3: TEdit;
    LbPlayer4: TLabel;
    EdMaxHPPlayer4: TEdit;
    EdHPPlayer4: TEdit;
    LbPlayer5: TLabel;
    EdMaxHPPlayer5: TEdit;
    EdHPPlayer5: TEdit;
    LbPlayer6: TLabel;
    EdMaxHPPlayer6: TEdit;
    EdHPPlayer6: TEdit;
    lbHpMaxPlayer: TLabel;
    lbHpAtualPlayer: TLabel;
    GgPlayer1: TGauge;
    GgPlayer2: TGauge;
    GgPlayer3: TGauge;
    GgPlayer4: TGauge;
    GgPlayer5: TGauge;
    GgPlayer6: TGauge;
    GgNPC6: TGauge;
    GgNPC1: TGauge;
    GgNPC2: TGauge;
    GgNPC3: TGauge;
    GgNPC4: TGauge;
    GgNPC5: TGauge;
    GgNPC12: TGauge;
    GgNPC7: TGauge;
    GgNPC8: TGauge;
    GgNPC9: TGauge;
    GgNPC10: TGauge;
    GgNPC11: TGauge;
    GgNPC13: TGauge;
    GgNPC14: TGauge;
    EdQtdPlayers: TEdit;
    LbQtdPlayers: TLabel;
    LbQtdNPCs: TLabel;
    EdQtdNPCs: TEdit;
    BtnShowPlayers: TButton;
    BtnShowNPCs: TButton;
    BtnAltNumPlay: TButton;
    BtnAltNumNPCs: TButton;
    BtnAtualizarNPCs: TButton;
    BtnGravarPlayer: TButton;
    BtnGravarNPCs: TButton;
    BtnAtualizarPlayer: TButton;
    Label1: TLabel;
    Button1: TButton;
    Procedure LblClick (sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnShowPlayersClick(Sender: TObject);
    procedure BtnAltNumPlayClick(Sender: TObject);
    procedure BtnShowNPCsClick(Sender: TObject);
    procedure BtnAltNumNPCsClick(Sender: TObject);
    procedure BtnGravarPlayerClick(Sender: TObject);
    procedure BtnGravarNPCsClick(Sender: TObject);
    procedure BtnAtualizarPlayerClick(Sender: TObject);
    procedure BtnAtualizarNPCsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtribuirPlayers;
    procedure AtribuirNPCs;
    procedure MostrarPlayers;
    procedure EsconderPlayers;
    procedure MostrarNPCs;
    procedure EsconderNPCs;
    procedure ClearShowPlayers;
    procedure ClearShowNPCs;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  vLbPlayers: array [0..5] of TLabel;
  vEdMaxHPPlayers: array [0..5] of TEdit;
  vEdHPPlayers: array [0..5] of TEdit;
  vGgPlayers: array [0..5] of TGauge;
  
  vLbNPCs: array [0..13] of TLabel;
  vEdMaxHPNPCs: array [0..13] of TEdit;
  vEdHPNPCs: array [0..13] of TEdit;
  vGgNPCs: array [0..13] of TGauge;

  fQtdPlayers: Integer;
  fQtdNPCs: Integer;


implementation

uses uFichaCompleta;

{$R *.dfm}

{ TForm1 }

{ TFrmMain }

procedure TFrmMain.LblClick(sender: TObject);
begin
  FrmChangeName.ShowModal;
  TLabel(sender).Caption := uChangeName.vName;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  AtribuirPlayers;
  AtribuirNPCs;
end;

procedure TFrmMain.AtribuirNPCs;
begin
  vLbNPCs[0] := LbNPC1;
  vEdMaxHPNPCs[0] := EdMaxHpNPCs1;
  vEdHPNPCs[0] := EdHpAtuNPCs1;
  vGgNPCs[0] := GgNPC1;

  vLbNPCs[1] := LbNPC2;
  vEdMaxHPNPCs[1] := EdMaxHpNPCs2;
  vEdHPNPCs[1] := EdHpAtuNPCs2;
  vGgNPCs[1] := GgNPC2;

  vLbNPCs[2] := LbNPC3;
  vEdMaxHPNPCs[2] := EdMaxHpNPCs3;
  vEdHPNPCs[2] := EdHpAtuNPCs3;
  vGgNPCs[2] := GgNPC3;

  vLbNPCs[3] := LbNPC4;
  vEdMaxHPNPCs[3] := EdMaxHpNPCs4;
  vEdHPNPCs[3] := EdHpAtuNPCs4;
  vGgNPCs[3] := GgNPC4;

  vLbNPCs[4] := LbNPC5;
  vEdMaxHPNPCs[4] := EdMaxHpNPCs5;
  vEdHPNPCs[4] := EdHpAtuNPCs5;
  vGgNPCs[4] := GgNPC5;

  vLbNPCs[5] := LbNPC6;
  vEdMaxHPNPCs[5] := EdMaxHpNPCs6;
  vEdHPNPCs[5] := EdHpAtuNPCs6;
  vGgNPCs[5] := GgNPC6;

  vLbNPCs[6] := LbNPC7;
  vEdMaxHPNPCs[6] := EdMaxHpNPCs7;
  vEdHPNPCs[6] := EdHpAtuNPCs7;
  vGgNPCs[6] := GgNPC7;

  vLbNPCs[7] := LbNPC8;
  vEdMaxHPNPCs[7] := EdMaxHpNPCs8;
  vEdHPNPCs[7] := EdHpAtuNPCs8;
  vGgNPCs[7] := GgNPC8;

  vLbNPCs[8] := LbNPC9;
  vEdMaxHPNPCs[8] := EdMaxHpNPCs9;
  vEdHPNPCs[8] := EdHpAtuNPCs9;
  vGgNPCs[8] := GgNPC9;

  vLbNPCs[9] := LbNPC10;
  vEdMaxHPNPCs[9] := EdMaxHpNPCs10;
  vEdHPNPCs[9] := EdHpAtuNPCs10;
  vGgNPCs[9] := GgNPC10;

  vLbNPCs[10] := LbNPC11;
  vEdMaxHPNPCs[10] := EdMaxHpNPCs11;
  vEdHPNPCs[10] := EdHpAtuNPCs11;
  vGgNPCs[10] := GgNPC11;

  vLbNPCs[11] := LbNPC12;
  vEdMaxHPNPCs[11] := EdMaxHpNPCs12;
  vEdHPNPCs[11] := EdHpAtuNPCs12;
  vGgNPCs[11] := GgNPC12;

  vLbNPCs[12] := LbNPC13;
  vEdMaxHPNPCs[12] := EdMaxHpNPCs13;
  vEdHPNPCs[12] := EdHpAtuNPCs13;
  vGgNPCs[12] := GgNPC13;

  vLbNPCs[13] := LbNPC14;
  vEdMaxHPNPCs[13] := EdMaxHpNPCs14;
  vEdHPNPCs[13] := EdHpAtuNPCs14;
  vGgNPCs[13] := GgNPC14;
end;

procedure TFrmMain.AtribuirPlayers;
begin
  vLbPlayers[0] := LbPlayer1;
  vEdMaxHPPlayers[0] := EdMaxHPPlayer1;
  vEdHPPlayers[0] := EdHPPlayer1;
  vGgPlayers[0] := GgPlayer1;

  vLbPlayers[1] := LbPlayer2;
  vEdMaxHPPlayers[1] := EdMaxHPPlayer2;
  vEdHPPlayers[1] := EdHPPlayer2;
  vGgPlayers[1] := GgPlayer2;

  vLbPlayers[2] := LbPlayer3;
  vEdMaxHPPlayers[2] := EdMaxHPPlayer3;
  vEdHPPlayers[2] := EdHPPlayer3;
  vGgPlayers[2] := GgPlayer3;

  vLbPlayers[3] := LbPlayer4;
  vEdMaxHPPlayers[3] := EdMaxHPPlayer4;
  vEdHPPlayers[3] := EdHPPlayer4;
  vGgPlayers[3] := GgPlayer4;

  vLbPlayers[4] := LbPlayer5;
  vEdMaxHPPlayers[4] := EdMaxHPPlayer5;
  vEdHPPlayers[4] := EdHPPlayer5;
  vGgPlayers[4] := GgPlayer5;

  vLbPlayers[5] := LbPlayer6;
  vEdMaxHPPlayers[5] := EdMaxHPPlayer6;
  vEdHPPlayers[5] := EdHPPlayer6;
  vGgPlayers[5] := GgPlayer6;
end;

procedure TFrmMain.BtnShowPlayersClick(Sender: TObject); // Funcionando 100%
begin
  fQtdPlayers := 0;
  try
    fQtdPlayers := StrToInt(EdQtdPlayers.text);
  except
    on EConvertError do
      begin
        ClearShowPlayers;
        Abort;
      end;
  end;
  if (fQtdPlayers > 6) or (fQtdPlayers <= 0) then
  begin
    ClearShowPlayers;
    Abort;
  end;

  MostrarPlayers;

  BtnGravarPlayer.Visible := True;
  BtnAltNumPlay.Visible := True;
  BtnShowPlayers.Visible := False;
  EdQtdPlayers.Enabled := False;

  lbHpMaxPlayer.Visible := True;
  lbHpAtualPlayer.Visible := True;
end;

procedure TFrmMain.BtnAltNumPlayClick(Sender: TObject);   // Funcionando 100%
begin
  BtnShowPlayers.Visible := True;
  EdQtdPlayers.Enabled := True;
  BtnAltNumPlay.Visible := False;
  BtnAtualizarPlayer.Visible := False;
  BtnGravarPlayer.Visible := False;
  EsconderPlayers;
end;

procedure TFrmMain.BtnShowNPCsClick(Sender: TObject); // funcionando 100%
begin
  fQtdNPCs := 0;
  // Validações...
  try
    fQtdNPCs := StrToInt(EdQtdNPCs.text);
  except
    on EConvertError do
      begin
        ClearShowNPCs;
        Abort;
      end;
  end;
  if (fQtdNPCs > 14) or (fQtdNPCs <= 0) then
  begin
    ClearShowNPCs;
    Abort;
  end;

  MostrarNpcs;

  BtnGravarNPCs.Visible := True;
  BtnAltNumNPCs.Visible := True;
  BtnShowNPCs.Visible := False;
  EdQtdNPCs.Enabled := False;

  lbHPMaxNPC.Visible := True;
  lbHPAtualNPC.Visible := True;  
end;

procedure TFrmMain.BtnAltNumNPCsClick(Sender: TObject); // funcionando 100%
begin
  BtnShowNPCs.Visible := True;
  EdQtdNPCs.Enabled := True;
  BtnAltNumNPCs.Visible := False;
  BtnAtualizarNPCs.Visible := False;
  BtnGravarNPCs.Visible := False;
  EsconderNPCs;
end;

procedure TFrmMain.BtnGravarPlayerClick(Sender: TObject); // funcionando 100%
var
  i: Integer;
begin
  if BtnGravarPlayer.Caption = 'Gravar' then
  begin
    for i := 0 to fQtdPlayers -1 do
    begin
      vEdMaxHPPlayers[i].Enabled := False;
      try
        vGgPlayers[i].MaxValue := StrToInt(vEdMaxHPPlayers[i].Text);
        if (vGgPlayers[i].Progress = 0) then
          vGgPlayers[i].Progress := vGgPlayers[i].MaxValue
        else
          BtnAtualizarPlayerClick(nil);
      except
        vEdMaxHPPlayers[i].Enabled := True;
        exit;
      end;
    end;
    BtnAtualizarPlayer.Visible := True;
    BtnGravarPlayer.Caption := 'Alterar';
  end
  else
  begin
    for i := 0 to fQtdPlayers -1 do
    begin
      vEdMaxHPPlayers[i].Enabled := True;
    end;
    BtnAtualizarPlayer.Visible := False;
    BtnGravarPlayer.Caption := 'Gravar';    
  end;
end;

procedure TFrmMain.BtnGravarNPCsClick(Sender: TObject); // Funcionando 100%
var
  i: Integer;
begin
  if BtnGravarNPCs.Caption = 'Gravar' then
  begin
    for i := 0 to fQtdNPCs -1 do
    begin
      vEdMaxHPNPCs[i].Enabled := False;
      try
        vGgNPCs[i].MaxValue := StrToInt(vEdMaxHPNPCs[i].Text);
        if (vGgNPCs[i].Progress = 0) then
          vGgNPCs[i].Progress := vGgNPCs[i].MaxValue
        else
          BtnAtualizarNPCsClick(nil);
      except
        vEdMaxHPNPCs[i].Enabled := True;
        exit;
      end;
    end;
    BtnAtualizarNPCs.Visible := True;
    BtnGravarNPCs.Caption := 'Alterar';
  end
  else
  begin
    for i := 0 to fQtdNPCs -1 do
    begin
      vEdMaxHPNPCs[i].Enabled := True;
    end;
    BtnAtualizarNPCs.Visible := False;
    BtnGravarNPCs.Caption := 'Gravar';    
  end;
end;

procedure TFrmMain.BtnAtualizarPlayerClick(Sender: TObject);  // funcionando 80%   ---> Gauge.Progress não marca o valor correto em alguns casos. Verificar!
var
  i: Integer;
  xVal: Extended;
  xValStr: String;
begin
  for i := 0 to fQtdPlayers -1 do
  begin
    xVal := ((StrToInt(vEdHPPlayers[i].Text) * 100) / (StrToInt(vEdMaxHPPlayers[i].Text)));
    xValStr := FloatToStr(xVal);
    vGgPlayers[i].Progress := 0;
    vGgPlayers[i].Progress := StrToInt(xValStr);
  end;
end;

procedure TFrmMain.EsconderPlayers;  // Funcionando 100%
var
  i: integer;
begin
  for i := 0 to 5 do
  begin
    vLbPlayers[i].Visible := false;
    vEdMaxHPPlayers[i].Visible := false;
    vEdHPPlayers[i].Visible := false;
    vGgPlayers[i].Visible := false;
  end;

  lbHpMaxPlayer.Visible := False;
  lbHpAtualPlayer.Visible := False;
  EdQtdPlayers.SetFocus;
  EdQtdPlayers.Clear;
end;

procedure TFrmMain.MostrarPlayers;  // funcionando 100%
var
  i: integer;
begin
  for i := 0 to fQtdPlayers -1 do
  begin
    vLbPlayers[i].Visible := true;
    vEdMaxHPPlayers[i].Visible := true;
    vEdHPPlayers[i].Visible := true;
    vGgPlayers[i].Visible := true;
  end;
end;

procedure TFrmMain.EsconderNPCs;  // funcionando 100%
var
  i: integer;
begin
  for i := 0 to 13 do
  begin
    vLbNPCs[i].Visible := false;
    vEdMaxHPNPCs[i].Visible := false;
    vEdHPNPCs[i].Visible := false;
    vGgNPCs[i].Visible := false;
  end;

  lbHPMaxNPC.Visible := False;
  lbHPAtualNPC.Visible := False;
  EdQtdNPCs.SetFocus;
  EdQtdNPCs.Clear;
end;

procedure TFrmMain.MostrarNPCs; // funcionando 100%
var
  i: integer;
begin
  for i := 0 to fQtdNPCs -1 do
  begin
    vLbNPCs[i].Visible := true;
    vEdMaxHPNPCs[i].Visible := true;
    vEdHPNPCs[i].Visible := true;
    vGgNPCs[i].Visible := true;
  end;
end;

procedure TFrmMain.ClearShowPlayers;  // funcionando 100%
begin
  ShowMessage('Digite apenas valores de 1 a 6');
  EdQtdPlayers.SetFocus;
  EdQtdPlayers.Clear;
end;

procedure TFrmMain.ClearShowNPCs; // funcionando 100%
begin
  ShowMessage('Digite apenas valores de 1 a 14');
  EdQtdNPCs.SetFocus;
  EdQtdNPCs.Clear;
end;

procedure TFrmMain.BtnAtualizarNPCsClick(Sender: TObject);
var
  i: Integer;
  xVal: Extended;
  xValStr: String;
begin
  for i := 0 to fQtdNPCs -1 do
  begin
    xVal := ((StrToInt(vEdHPNPCs[i].Text) * 100) / (StrToInt(vEdMaxHPNPCs[i].Text)));
    xValStr := FloatToStr(xVal);
    vGgNPCs[i].Progress := 0;
    vGgNPCs[i].Progress := StrToInt(xValStr);
  end;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  FrmFichaCompl.ShowModal;
end;

end.
