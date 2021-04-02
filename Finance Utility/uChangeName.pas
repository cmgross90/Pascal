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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmChangeName: TFrmChangeName;
  vName, vStatus: String;

implementation

{$R *.dfm}

procedure TFrmChangeName.BtnChangeClick(Sender: TObject);
begin
  vName := EdName.Text;
  EdName.Text := '';
  FrmChangeName.Close;
end;

procedure TFrmChangeName.FormShow(Sender: TObject);
begin
  case vStatus in
    0 : LbName.caption := 'Banco';

  end;
end;

end.
