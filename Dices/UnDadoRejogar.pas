unit UnDadoRejogar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnDado;

type
  TFrmSelecionar = class(TForm)
    CBDado1: TCheckBox;
    CBDado2: TCheckBox;
    CBDado3: TCheckBox;
    CBDado4: TCheckBox;
    CBDado5: TCheckBox;
    BtnJogar2: TButton;
    LblTitulo1: TLabel;
    LblTitulo2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnJogar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionar: TFrmSelecionar;
implementation

{$R *.dfm}



procedure TFrmSelecionar.FormCreate(Sender: TObject);
begin
CBDado1.Checked := False;
CBDado2.Checked := False;
CBDado3.Checked := False;
CBDado4.Checked := False;
CBDado5.Checked := False;
end;

procedure TFrmSelecionar.BtnJogar2Click(Sender: TObject);
begin

if (CBDado1.Checked = True) then
  Begin
  FrmGeneral.Dado1;
  End;

if (CBDado2.Checked = True) then
  Begin
  FrmGeneral.Dado2;
  End;

if (CBDado3.Checked = True) then
  Begin
  FrmGeneral.Dado3;
  End;

if (CBDado4.Checked = True) then
  Begin
  FrmGeneral.Dado4;
  End;

if (CBDado5.Checked = True) then
  Begin
  FrmGeneral.Dado5;
  End;
FrmGeneral.Show;
FrmSelecionar.Hide;
end;


end.
