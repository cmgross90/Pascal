unit uCadastroContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, DB, DBTables, Grids,
  DBGrids;

type
  Tcadastro_contas_frm = class(TForm)
    Campos_pnl: TPanel;
    Codigo_banco_lb: TLabel;
    cd_agencia_lb: TLabel;
    Nm_banco_dbtxt: TDBText;
    cd_banco_dbedt: TDBEdit;
    cd_agencia_dbedt: TDBEdit;
    nm_agencia_dbtxt: TDBText;
    tipo_conta_lb: TLabel;
    Label2: TLabel;
    tipo_conta_dbcb: TDBComboBox;
    nr_conta_lb: TLabel;
    Label1: TLabel;
    saldo_inicial_dbedt: TDBEdit;
    Navegador_pnl: TPanel;
    DBNavigator1: TDBNavigator;
    Help_btn: TBitBtn;
    Fechar_btn: TBitBtn;
    Cancelar_btn: TBitBtn;
    Inserir_btn: TBitBtn;
    Salvar_btn: TBitBtn;
    DBGrid1: TDBGrid;
    agenciasDS: TDataSource;
    agencias_tbl: TTable;
    Bancos_tbl: TTable;
    BancosDS: TDataSource;
    contas_tbl: TTable;
    contasDS: TDataSource;
    contas_tblCD_BANCO: TSmallintField;
    contas_tblCD_AGENCIA: TSmallintField;
    contas_tblTIPO_CONTA: TStringField;
    contas_tblNR_CONTA: TStringField;
    contas_tblNR_SALDO_INICIAL: TIntegerField;
    contas_tblNM_BANCO: TStringField;
    contas_tblNM_AGENCIA: TStringField;
    nr_conta_dbedt: TDBEdit;
    procedure Inserir_btnClick(Sender: TObject);
    procedure Salvar_btnClick(Sender: TObject);
    procedure Cancelar_btnClick(Sender: TObject);
    procedure Fechar_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_contas_frm: Tcadastro_contas_frm;

implementation

{$R *.dfm}

procedure Tcadastro_contas_frm.Inserir_btnClick(Sender: TObject);
begin
  cd_banco_dbedt.Enabled := True;
  cd_agencia_dbedt.Enabled := True;
  nr_conta_dbedt.Enabled := True;
  tipo_conta_dbcb.Enabled := True;
  saldo_inicial_dbedt.Enabled := True;

  contas_tbl.Insert;
  Inserir_btn.Enabled := False;
  Cancelar_btn.Caption := '&Cancelar';
end;

procedure Tcadastro_contas_frm.Salvar_btnClick(Sender: TObject);
begin
  if not (contas_tbl.State = dsBrowse) then
  begin
    try
      cd_banco_dbedt.Enabled := False;
      cd_agencia_dbedt.Enabled := False;
      nr_conta_dbedt.Enabled := False;
      tipo_conta_dbcb.Enabled := False;
      saldo_inicial_dbedt.Enabled := False;

      contas_tbl.Post;
    except
      contas_tbl.Cancel;
      ShowMessage('Já existe um banco cadastrado com esse valor.');
    end;
    Inserir_btn.Enabled := True;
  end;
  Cancelar_btn.Caption := '&Excluir';
end;

procedure Tcadastro_contas_frm.Cancelar_btnClick(Sender: TObject);
begin
  if Cancelar_btn.Caption = '&Excluir' then
    contas_tbl.Delete
  else
    contas_tbl.Cancel;
  Inserir_btn.Enabled := True;
  Cancelar_btn.Caption := '&Excluir';

  cd_banco_dbedt.Enabled := False;
  cd_agencia_dbedt.Enabled := False;
  nr_conta_dbedt.Enabled := False;
  tipo_conta_dbcb.Enabled := False;
  saldo_inicial_dbedt.Enabled := False;
end;

procedure Tcadastro_contas_frm.Fechar_btnClick(Sender: TObject);
begin
  Close;
end;

end.
