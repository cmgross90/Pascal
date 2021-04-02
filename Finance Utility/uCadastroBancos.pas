unit uCadastroBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  Tcadastro_bancos_frm = class(TForm)
    Campos_pnl: TPanel;
    Codigo_banco_dbedt: TDBEdit;
    Nome_banco_dbedt: TDBEdit;
    Bancos_tbl: TTable;
    Codigo_lb: TLabel;
    nome_lb: TLabel;
    BancosDS: TDataSource;
    Navegador_pnl: TPanel;
    DBNavigator1: TDBNavigator;
    Help_btn: TBitBtn;
    Fechar_btn: TBitBtn;
    Cancelar_btn: TBitBtn;
    Inserir_btn: TBitBtn;
    Salvar_btn: TBitBtn;
    DBGrid1: TDBGrid;
    procedure Fechar_btnClick(Sender: TObject);
    procedure Inserir_btnClick(Sender: TObject);
    procedure Salvar_btnClick(Sender: TObject);
    procedure Cancelar_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_bancos_frm: Tcadastro_bancos_frm;

implementation

uses Math;

{$R *.dfm}

procedure Tcadastro_bancos_frm.Fechar_btnClick(Sender: TObject);
begin
  Close;
end;

procedure Tcadastro_bancos_frm.Inserir_btnClick(Sender: TObject);
begin
  Codigo_banco_dbedt.Enabled := True;
  Nome_banco_dbedt.Enabled := True;

  Bancos_tbl.Insert;
  Inserir_btn.Enabled := False;
  Cancelar_btn.Caption := '&Cancelar';
end;

procedure Tcadastro_bancos_frm.Salvar_btnClick(Sender: TObject);
begin
  if not (Bancos_tbl.State = dsBrowse) then
  begin
    Codigo_banco_dbedt.Enabled := False;
    Nome_banco_dbedt.Enabled := False;

    if Length(trim(Nome_banco_dbedt.text)) = 0 then
      showmessage('O código do banco ainda não foi preenchido.');

    try
      Bancos_tbl.Post;
    except
      Bancos_tbl.Cancel;
      ShowMessage('Já existe um banco cadastrado com esse valor.');
    end;
    Inserir_btn.Enabled := True;
  end;
  Cancelar_btn.Caption := '&Excluir';
end;

procedure Tcadastro_bancos_frm.Cancelar_btnClick(Sender: TObject);
begin
  if Cancelar_btn.Caption = '&Excluir' then
    Bancos_tbl.Delete
  else
    Bancos_tbl.Cancel;
  Inserir_btn.Enabled := True;
  Cancelar_btn.Caption := '&Excluir';

  Codigo_banco_dbedt.Enabled := False;
  Nome_banco_dbedt.Enabled := False;
end;

end.
