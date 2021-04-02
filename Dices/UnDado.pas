unit UnDado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrmGeneral = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    BtnJogar: TButton;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    BtnJogarNov: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure LimpaCampo;
    procedure FormCreate(Sender: TObject);
    procedure BtnJogarClick(Sender: TObject);
    procedure Dado1;
    procedure Dado2;
    procedure Dado3;
    procedure Dado4;
    procedure Dado5;
    procedure BtnJogarNovClick(Sender: TObject);
    // procedure Soma;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGeneral: TFrmGeneral;

implementation

uses UnDadoRejogar;

{$R *.DFM}

{ TForm1 }

procedure TFrmGeneral.LimpaCampo;
begin
Image1.Visible:= false;
Image2.Visible:= false;
Image3.Visible:= false;
Image4.Visible:= false;
Image5.Visible:= false;
Image6.Visible:= false;
Image7.Visible:= false;
Image8.Visible:= false;
Image9.Visible:= false;
Image10.Visible:= false;
Image11.Visible:= false;
Image12.Visible:= false;
Image13.Visible:= false;
Image14.Visible:= false;
Image15.Visible:= false;
Image16.Visible:= false;
Image17.Visible:= false;
Image18.Visible:= false;
Image19.Visible:= false;
Image20.Visible:= false;
Image21.Visible:= false;
Image22.Visible:= false;
Image23.Visible:= false;
Image24.Visible:= false;
Image25.Visible:= false;
Image26.Visible:= false;
Image27.Visible:= false;
Image28.Visible:= false;
Image29.Visible:= false;
Image30.Visible:= false;
end;

procedure TFrmGeneral.FormCreate(Sender: TObject);
begin
Image1.Visible:= false;
Image2.Visible:= false;
Image3.Visible:= false;
Image4.Visible:= false;
Image5.Visible:= false;
Image6.Visible:= false;
Image7.Visible:= false;
Image8.Visible:= false;
Image9.Visible:= false;
Image10.Visible:= false;
Image11.Visible:= false;
Image12.Visible:= false;
Image13.Visible:= false;
Image14.Visible:= false;
Image15.Visible:= false;
Image16.Visible:= false;
Image17.Visible:= false;
Image18.Visible:= false;
Image19.Visible:= false;
Image20.Visible:= false;
Image21.Visible:= false;
Image22.Visible:= false;
Image23.Visible:= false;
Image24.Visible:= false;
Image25.Visible:= false;
Image26.Visible:= false;
Image27.Visible:= false;
Image28.Visible:= false;
Image29.Visible:= false;
Image30.Visible:= false;
BtnJogarNov.Enabled := False;
end;

procedure TFrmGeneral.BtnJogarClick(Sender: TObject);
begin
LimpaCampo;
Dado1;
Dado2;
Dado3;
Dado4;
Dado5;
BtnJogar.Enabled := False;
BtnJogarNov.Enabled := True;
end;

procedure TFrmGeneral.Dado1;
Var D1 : Integer;
begin
D1:= Trunc(Random*10);
While not ((D1 >= 1) and (D1 <= 6)) do
        Begin
       D1:= Trunc(Random*10);
        End;

       if (D1 = 1) then
         Begin
         Image1.Visible:= true;  // 1
         Exit;
         End;
       if (D1 = 2) then
         Begin
         Image2.Visible:= true;  // 2
         Exit;
         End;
       if (D1 = 3) then
         Begin
         Image3.Visible:= true;  // 3
         Exit;
         End;
       if (D1 = 4) then
         Begin
         Image4.Visible:= true;  // 4
         Exit;
         End;
       if (D1 = 5) then
         Begin
         Image5.Visible:= true;  // 5
         Exit;
         End;
       if (D1 = 6) then
         Begin
         Image6.Visible:= true;  // 6
         Exit;
         End;
end;

procedure TFrmGeneral.Dado2;
Var D2 : Integer;
begin
D2:= Trunc(Random*10);
While not ((D2 >= 1) and (D2 <= 6)) do
        Begin
       D2:= Trunc(Random*10);
        End;

       if (D2 = 1) then
         Begin
         Image7.Visible:= true;  // 1
         Exit;
         End;
       if (D2 = 2) then
         Begin
         Image8.Visible:= true;  // 2
         Exit;
         End;
       if (D2 = 3) then
         Begin
         Image9.Visible:= true;  // 3
         Exit;
         End;
       if (D2 = 4) then
         Begin
         Image10.Visible:= true;  // 4
         Exit;
         End;
       if (D2 = 5) then
         Begin
         Image11.Visible:= true;  // 5
         Exit;
         End;
       if (D2 = 6) then
         Begin
         Image12.Visible:= true;  // 6
         Exit;
         End;
end;

procedure TFrmGeneral.Dado3;
Var D3 : Integer;
begin
D3:= Trunc(Random*10);
While not ((D3 >= 1) and (D3 <= 6)) do
        Begin
       D3:= Trunc(Random*10);
        End;

       if (D3 = 1) then
         Begin
         Image13.Visible:= true;  // 1
         Exit;
         End;
       if (D3 = 2) then
         Begin
         Image14.Visible:= true;  // 2
         Exit;
         End;
       if (D3 = 3) then
         Begin
         Image15.Visible:= true;  // 3
         Exit;
         End;
       if (D3 = 4) then
         Begin
         Image16.Visible:= true;  // 4
         Exit;
         End;
       if (D3 = 5) then
         Begin
         Image17.Visible:= true;  // 5
         Exit;
         End;
       if (D3 = 6) then
         Begin
         Image18.Visible:= true;  // 6
         Exit;
         End;
end;

procedure TFrmGeneral.Dado4;
Var D4 : Integer;
begin
D4:= Trunc(Random*10);
While not ((D4 >= 1) and (D4 <= 6)) do
        Begin
       D4:= Trunc(Random*10);
        End;

       if (D4 = 1) then
         Begin
         Image19.Visible:= true;  // 1
         Exit;
         End;
       if (D4 = 2) then
         Begin
         Image20.Visible:= true;  // 2
         Exit;
         End;
       if (D4 = 3) then
         Begin
         Image21.Visible:= true;  // 3
         Exit;
         End;
       if (D4 = 4) then
         Begin
         Image22.Visible:= true;  // 4
         Exit;
         End;
       if (D4 = 5) then
         Begin
         Image23.Visible:= true;  // 5
         Exit;
         End;
       if (D4 = 6) then
         Begin
         Image24.Visible:= true;  // 6
         Exit;
         End;
end;
procedure TFrmGeneral.Dado5;
Var D5 : Integer;
begin
D5:= Trunc(Random*10);
While not ((D5 >= 1) and (D5 <= 6)) do
        Begin
       D5:= Trunc(Random*10);
        End;

       if (D5 = 1) then
         Begin
         Image25.Visible:= true;  // 1
         Exit;
         End;
       if (D5 = 2) then
         Begin
         Image26.Visible:= true;  // 2
         Exit;
         End;
       if (D5 = 3) then
         Begin
         Image27.Visible:= true;  // 3
         Exit;
         End;
       if (D5 = 4) then
         Begin
         Image28.Visible:= true;  // 4
         Exit;
         End;
       if (D5 = 5) then
         Begin
         Image29.Visible:= true;  // 5
         Exit;
         End;
       if (D5 = 6) then
         Begin
         Image30.Visible:= true;  // 6
         Exit;
         End;
end;
procedure TFrmGeneral.BtnJogarNovClick(Sender: TObject);
begin
FrmSelecionar.Show;
BtnJogarNov.Enabled := False;
end;

end.
