unit Modo2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    MouseDownSpot : TPoint;
    Capturing : bool;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Capturing := true;
MouseDownSpot.X := x;
MouseDownSpot.Y := Y;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if Capturing then begin
image1.Left:= image1.Left-(MouseDownSpot.x-x);
image1.Top:= image1.Top - (MouseDownSpot.x-y);
end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Capturing then begin
ReleaseCapture;
Capturing := false;
image1.Left := image1.Left - (MouseDownSpot.x -x);
image1.Top := image1.Top - (MouseDownSpot.y - y);
end;
end;

end.
 