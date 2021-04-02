unit uChangeBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables, uVariaveis;

type
  Tmudar_banco_frm = class(TForm)
    banco_cb: TDBComboBox;
    Label1: TLabel;
    selecionar_btn: TButton;
    bancosDS: TDataSource;
    bancos_tb: TTable;
    procedure selecionar_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure banco_cbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mudar_banco_frm: Tmudar_banco_frm;

implementation

{$R *.dfm}

procedure Tmudar_banco_frm.selecionar_btnClick(Sender: TObject);
begin
  vBanco := banco_cb.Field.AsInteger;

  mudar_banco_frm.Close;
end;

procedure Tmudar_banco_frm.FormShow(Sender: TObject);
begin
  bancos_tb.Open;
end;

procedure Tmudar_banco_frm.banco_cbClick(Sender: TObject);
begin
  bancos_tb.Refresh;
end;

end.
