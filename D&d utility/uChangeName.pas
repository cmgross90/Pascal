unit uChangeName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmChangeName = class(TForm)
    BtnChange: TButton;
    LbName: TLabel;
    EdName: TEdit;
    procedure BtnChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmChangeName: TFrmChangeName;
  vName: String;

implementation

{$R *.dfm}

procedure TFrmChangeName.BtnChangeClick(Sender: TObject);
begin
  vName := EdName.Text;
  EdName.Text := '';
  FrmChangeName.Close;
end;

end.
