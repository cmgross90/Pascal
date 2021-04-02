unit UnCombate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFrmCombate = class(TForm)
    ImgBombaB: TImage;
    ImgMajorB: TImage;
    ImgCoronelB: TImage;
    ImgGeneralB: TImage;
    ImgSargentoB: TImage;
    ImgTenenteB: TImage;
    ImgCapitaoB: TImage;
    ImgEspiaoB: TImage;
    ImgSoldadoB: TImage;
    ImgCaboB: TImage;
    ImgMarechalR: TImage;
    ImgBandeiraR: TImage;
    ImgBombaR: TImage;
    ImgMarechalB: TImage;
    ImgBandeiraB: TImage;
    ImgEspiaoR: TImage;
    ImgSoldadoR: TImage;
    ImgCaboR: TImage;
    ImgSargentoR: TImage;
    ImgTenenteR: TImage;
    ImgCapitaoR: TImage;
    ImgMajorR: TImage;
    ImgCoronelR: TImage;
    ImgGeneralR: TImage;
    BtnProximo: TButton;
    ShpJogador: TShape;
    PnlPrincipal: TPanel;
    ImgFundo: TImage;
    procedure ImgEspiaoBMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgEspiaoBMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgEspiaoBMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    MouseDownSpot : TPoint;
    Capturing : bool;
  end;

var
  FrmCombate: TFrmCombate;

implementation

{$R *.DFM}



procedure TFrmCombate.ImgEspiaoBMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Capturing := true;
MouseDownSpot.X := x;
MouseDownSpot.Y := Y;
end;

procedure TFrmCombate.ImgEspiaoBMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if Capturing then begin
ImgEspiaoB.Left:= ImgEspiaoB.Left-(MouseDownSpot.x-x);
ImgEspiaoB.Top:= ImgEspiaoB.Top - (MouseDownSpot.x-y);
end;
end;

procedure TFrmCombate.ImgEspiaoBMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Capturing then begin
ReleaseCapture;
Capturing := false;
ImgEspiaoB.Left := ImgEspiaoB.Left - (MouseDownSpot.x -x);
ImgEspiaoB.Top := ImgEspiaoB.Top - (MouseDownSpot.y - y);
end;
end;

end.
