unit uDragDrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//    Accept := false;
end;

procedure TForm1.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    TListBox(Sender).Items.add(TListBox(Source).Items[TListBox(Source).itemIndex]);
    TListBox(Source).Items.Delete(TListBox(Source).itemIndex);
end;

end.
