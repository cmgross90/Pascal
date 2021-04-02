unit uFichaCompleta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, TabNotBk;

type
  TFrmFichaCompl = class(TForm)
    FichaComplTabN: TTabbedNotebook;
    TopPnl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    edLVL: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    StatusPnl: TPanel;
    Label15: TLabel;
    edFOR: TEdit;
    Label16: TLabel;
    edCON: TEdit;
    Label17: TLabel;
    edDEX: TEdit;
    Label18: TLabel;
    edINT: TEdit;
    Label19: TLabel;
    edSAB: TEdit;
    Label20: TLabel;
    edCAR: TEdit;
    lbFOR: TLabel;
    LbCON: TLabel;
    LbDEX: TLabel;
    LbINT: TLabel;
    LbSAB: TLabel;
    LbCAR: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lbModCON: TLabel;
    lbModFOR: TLabel;
    lbModDEX: TLabel;
    lbModINT: TLabel;
    lbModSAB: TLabel;
    lbModCHA: TLabel;
    IniciativaPnl: TPanel;
    lblIniciativa: TLabel;
    Label24: TLabel;
    lbDesIni: TLabel;
    lb1_2Ini: TLabel;
    Des: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edOutIni: TEdit;
    procedure edCONKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDEXKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edINTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSABKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCARChange(Sender: TObject);
    procedure edLVLKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edOutIniKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AtualizarIniciativa;
    procedure AtualizarStatus;
    procedure AtualizarForca;
    procedure AtualizarConstituicao;
    procedure AtualizarDestreza;
    procedure AtualizarInteligencia;
    procedure AtualizarSabedoria;
    procedure AtualizarCarisma;
  public
    { Public declarations }
  end;

var
  FrmFichaCompl: TFrmFichaCompl;

implementation

uses MaskUtils;

{$R *.dfm}

procedure TFrmFichaCompl.edFORKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  calc, calc2, calc3: Integer;
begin
  if edFOR.text <> '' then
  begin
    calc := StrToInt(edFOR.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    lbFOR.Caption := IntToStr(calc2);
    lbModFOR.Caption := IntToStr(calc3);
  end
  else  if (lbFOR.Caption = '') and (lbModFOR.Caption = '') then
        begin
          lbFOR.Caption := '';
          lbModFOR.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edCONKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  calc, calc2, calc3: Integer;
begin
  if edCON.text <> '' then
  begin
    calc := StrToInt(edCON.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    LbCON.Caption := IntToStr(calc2);
    lbModCON.Caption := IntToStr(calc3);
  end
  else  if (LbCON.Caption = '') and (lbModCON.Caption = '') then
        begin
          LbCON.Caption := '';
          lbModCON.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edDEXKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  calc, calc2, calc3: Integer;
begin
  if edDEX.text <> '' then
  begin
    calc := StrToInt(edDEX.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    LbDEX.Caption := IntToStr(calc2);
    lbModDEX.Caption := IntToStr(calc3);

    AtualizarIniciativa;
  end
  else  if (LbDEX.Caption = '') and (lbModDEX.Caption = '') then
        begin
          LbDEX.Caption := '';
          lbModDEX.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edINTKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  calc, calc2, calc3: Integer;
begin
  if edINT.text <> '' then
  begin
    calc := StrToInt(edINT.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    lbINT.Caption := IntToStr(calc2);
    lbModINT.Caption := IntToStr(calc3);
  end
  else  if (lbINT.Caption = '') and (lbModINT.Caption = '') then
        begin
          lbINT.Caption := '';
          lbModINT.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edSABKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  calc, calc2, calc3: Integer;
begin
  if edSAB.text <> '' then
  begin
    calc := StrToInt(edSAB.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    lbSAB.Caption := IntToStr(calc2);
    lbModSAB.Caption := IntToStr(calc3);
  end
  else  if (lbSAB.Caption = '') and (lbModSAB.Caption = '') then
        begin
          lbSAB.Caption := '';
          lbModSAB.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edCARChange(Sender: TObject);
var
  calc, calc2, calc3: Integer;
begin
  if edCAR.text <> '' then
  begin
    calc := StrToInt(edCAR.text);
    calc2 := (calc - 10) div 2;
    try
      calc3 := calc2 + (StrToInt(edLVL.text) div 2);
    except
      calc3 := calc2;
    end;
    lbCAR.Caption := IntToStr(calc2);
    lbModCHA.Caption := IntToStr(calc3);
  end
  else  if (lbCAR.Caption = '') and (lbModCHA.Caption = '') then
        begin
          lbCAR.Caption := '';
          lbModCHA.Caption := '';
        end;
end;

procedure TFrmFichaCompl.edLVLKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AtualizarStatus;
end;

procedure TFrmFichaCompl.AtualizarStatus;
begin
  AtualizarIniciativa;
  AtualizarForca;
  AtualizarConstituicao;
  AtualizarDestreza;
  AtualizarInteligencia;
  AtualizarSabedoria;
  AtualizarCarisma;
end;

procedure TFrmFichaCompl.AtualizarIniciativa;
var
  calc1, calc2, calc3, calc4, calc5: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      calc1 := StrToInt(edLVL.Text);
    except
      calc1 := 1;
    end;
    calc2 := calc1 div 2;
    lbDesIni.Caption := LbDEX.Caption;
    lb1_2Ini.Caption := IntToStr(calc2);

    if edOutIni.Text <> '' then
    begin
      try
        calc4 := StrToInt(edOutIni.Text);
      except
        calc4 := 0;
      end;
    end
    else
      calc4 := 0;

    if lbDesIni.Caption = '' then
      calc5 := 0
    else
      calc5 := StrToInt(lbDesIni.Caption);

    calc3 := calc2 + calc5 + calc4;
    lblIniciativa.Caption := IntToStr(calc3);
  end
  else
  begin
    lblIniciativa.Caption := '';
    lb1_2Ini.Caption := '';
  end;
end;

procedure TFrmFichaCompl.edOutIniKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AtualizarIniciativa;
end;

procedure TFrmFichaCompl.AtualizarForca;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModFOR.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModFOR.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModFOR.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModFOR.Caption := lbFOR.Caption;
end;

procedure TFrmFichaCompl.AtualizarConstituicao;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModCON.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModCON.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModCON.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModCON.Caption := LbCON.Caption;
end;

procedure TFrmFichaCompl.AtualizarDestreza;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModDEX.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModDEX.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModDEX.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModDEX.Caption := LbDEX.Caption;
end;

procedure TFrmFichaCompl.AtualizarInteligencia;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModINT.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModINT.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModINT.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModINT.Caption := LbINT.Caption;
end;

procedure TFrmFichaCompl.AtualizarSabedoria;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModSAB.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModSAB.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModSAB.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModSAB.Caption := LbSAB.Caption;
end;

procedure TFrmFichaCompl.AtualizarCarisma;
var
  xLvl, c1: Integer;
begin
  if edLVL.Text <> '' then
  begin
    try
      xLvl := StrToInt(edLVL.Text);
    except
      xLvl := 1;
    end;

    if lbModCHA.Caption <> '' then
    begin
      try
        c1 := StrToInt(lbModCHA.Caption);
      except
        c1 := 0;
      end;
    end
    else
      c1 := 0;

    lbModCHA.Caption := IntToStr((xLvl div 2) + c1);
  end
  else
    lbModCHA.Caption := LbCAR.Caption;
end;

end.
