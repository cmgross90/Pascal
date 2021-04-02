unit UnRoman;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    BtnTranslate: TButton;
    EdValue: TEdit;
    LblResult: TLabel;
    procedure BtnTraduzClick(Sender: TObject);
    procedure result;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X: string;

implementation

{$R *.DFM}

procedure TForm1.BtnTranslateClick(Sender: TObject);
begin
result;
EdValue.SetFocus;
end;

procedure TForm1.result;
var val, res: string;
    x, i: integer;

begin
val := EdValue.text;
x:= StrToInt(val);
  for i := 1 to 10 do
     begin
       if (x - 1000) >= 0 then
         begin
         res:= res + 'M ';
         x := x - 1000;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 900) >= 0 then
         begin
         res:= res + 'CM ';
         x := x - 900;
         end ;
     end;

  for i := 1 to 10 do
     begin
       if (x - 500) >= 0 then
         begin
         res:= res + 'D ';
         x := x - 500;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 400) >= 0 then
         begin
         res:= res + 'CD ';
         x := x - 400;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 100) >= 0 then
         begin
         res:= res + 'C ';
         x := x - 100;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 90) >= 0 then
         begin
         res:= res + 'XC ';
         x := x - 90;
         end;
     end;


  for i := 1 to 10 do
     begin
       if (x - 50) >= 0 then
         begin
         res:= res + 'L ';
         x := x - 50;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 40) >= 0 then
         begin
         res:= res + 'XL ';
         x := x - 40;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 10) >= 0 then
         begin
         res:= res + 'X ';
         x := x - 10;
         end;
     end;

  for i := 1 to 10 do
     begin
       if (x - 9) >= 0 then
         begin
         res:= res + 'IX ';
         x := x - 9;
         end;
     end;

   for i := 1 to 10 do
     begin
       if (x - 5) >= 0 then
         begin
         res:= res + 'V ';
         x := x - 5;
         end;
     end;

   for i := 1 to 10 do
     begin
       if (x - 4) >= 0 then
         begin
         res:= res + 'IV ';
         x := x - 4;
         end;
     end;

   for i := 1 to 10 do
     begin
       if (x - 1) >= 0 then
         begin
         res:= res + 'I ';
         x := x - 1;
         end;
     end;

LblResult.Caption := res;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
EdValue.SetFocus;
end;

end.
