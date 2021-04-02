unit uCadastroAgencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Buttons, Mask, ExtCtrls, Grids,
  DBGrids;

type
  Tcadastro_agencias_frm = class(TForm)
    Campos_pnl: TPanel;
    Codigo_banco_lb: TLabel;
    cd_agencia_lb: TLabel;
    cd_banco_dbedt: TDBEdit;
    cd_agencia_dbedt: TDBEdit;
    Nm_banco_dbtxt: TDBText;
    nm_agencia_dbedt: TDBEdit;
    nm_agencia_lb: TLabel;
    agencias_tbl: TTable;
    agenciasDS: TDataSource;
    Navegador_pnl: TPanel;
    DBNavigator1: TDBNavigator;
    Help_btn: TBitBtn;
    Fechar_btn: TBitBtn;
    Cancelar_btn: TBitBtn;
    Inserir_btn: TBitBtn;
    Salvar_btn: TBitBtn;
    DBGrid1: TDBGrid;
    Bancos_tbl: TTable;
    BancosDS: TDataSource;
    agencias_tblCD_BANCO: TSmallintField;
    agencias_tblCD_AGENCIA: TSmallintField;
    agencias_tblNM_AGENCIA: TStringField;
    agencias_tblNM_BANCO: TStringField;
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
  cadastro_agencias_frm: Tcadastro_agencias_frm;

implementation

uses Math;

{$R *.dfm}

procedure Tcadastro_agencias_frm.Fechar_btnClick(Sender: TObject);
begin
  Close;
end;

procedure Tcadastro_agencias_frm.Inserir_btnClick(Sender: TObject);
begin
  cd_banco_dbedt.Enabled := True;
  cd_agencia_dbedt.Enabled := True;
  nm_agencia_dbedt.Enabled := True;

  agencias_tbl.Insert;
  Inserir_btn.Enabled := False;
  Cancelar_btn.Caption := '&Cancelar';
end;

procedure Tcadastro_agencias_frm.Salvar_btnClick(Sender: TObject);
begin
  if not (agencias_tbl.State = dsBrowse) then
  begin
    try
      cd_banco_dbedt.Enabled := False;
      cd_agencia_dbedt.Enabled := False;
      nm_agencia_dbedt.Enabled := False;

      agencias_tbl.Post;
    except
      agencias_tbl.Cancel;
      ShowMessage('Já existe um banco cadastrado com esse valor.');
    end;
    Inserir_btn.Enabled := True;
  end;
  Cancelar_btn.Caption := '&Excluir';
end;

procedure Tcadastro_agencias_frm.Cancelar_btnClick(Sender: TObject);
begin
  if Cancelar_btn.Caption = '&Excluir' then
    agencias_tbl.Delete
  else
    agencias_tbl.Cancel;
  Inserir_btn.Enabled := True;
  Cancelar_btn.Caption := '&Excluir';

  cd_banco_dbedt.Enabled := False;
  cd_agencia_dbedt.Enabled := False;
  nm_agencia_dbedt.Enabled := False;
end;

end.
