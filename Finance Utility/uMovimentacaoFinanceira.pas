unit uMovimentacaoFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, jpeg,
  ExtCtrls, DB, DBTables, Mask, uChangeBanco, uVariaveis;

type
  Tmovimentacao_frm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Navegador_pnl: TPanel;
    Help_btn: TBitBtn;
    Fechar_btn: TBitBtn;
    Cancelar_btn: TBitBtn;
    Inserir_btn: TBitBtn;
    Salvar_btn: TBitBtn;
    Panel3: TPanel;
    dt_movimentacao_deposito_dbedt: TDBGrid;
    tipo_moviment_pc: TPageControl;
    cheque_ts: TTabSheet;
    deposito_ts: TTabSheet;
    transferencia_ts: TTabSheet;
    retirada_ts: TTabSheet;
    retirada_din_ts: TTabSheet;
    saldos_pnl: TPanel;
    movimentacaoDS: TDataSource;
    bancosDS: TDataSource;
    agenciasDS: TDataSource;
    contasDS: TDataSource;
    movimentacao_tbl: TTable;
    bancos_tb: TTable;
    contas_tbl: TTable;
    nr_cheque_dbedt: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dt_movimentacao_cheque_dbedt: TDBEdit;
    nm_beneficiario_cheque_dbedt: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    descricao_despesa_cheque_dbedt: TDBEdit;
    vl_montante_cheque_dbedt: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    nr_deposito_dbedt: TDBEdit;
    nm_beneficiario_deposito_dbedt: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    descricao_despesa_deposito_dbedt: TDBEdit;
    ie_categoria_deposito_dbedt: TDBComboBox;
    vl_montante_deposito_dbedt: TDBEdit;
    Label11: TLabel;
    dt_movimentacao_chdbedt: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    nr_transferencia_dbedt: TDBEdit;
    Label14: TLabel;
    vl_montante_transf_dbedt: TDBEdit;
    Label17: TLabel;
    dt_movimentacao_trasnf_dbedt: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    nr_retirada_edt: TDBEdit;
    nm_beneficiario_retirada_dbedt: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    descricao_despesa_retirada_dbedt: TDBEdit;
    ie_categoria_retirada_dbedt: TDBComboBox;
    vl_montante_retirada_dbedt: TDBEdit;
    Label23: TLabel;
    dt_movimentacao_retirada_dbedt: TDBEdit;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    descricao_despesa_retirada_din_dbedt: TDBEdit;
    ie_categoria_retirada_din_dbedt: TDBComboBox;
    vl_montante_retirada_din_dbedt: TDBEdit;
    Label29: TLabel;
    dt_movimentacao_retirada_din_dbedt: TDBEdit;
    Label30: TLabel;
    ie_categoria_cheque_dbedt: TDBComboBox;
    Label3: TLabel;
    Label15: TLabel;
    Label31: TLabel;
    nr_conta_transf_para_dbedt: TDBEdit;
    Label32: TLabel;
    nm_beneficiario_transferencia_dbedt: TDBEdit;
    Label16: TLabel;
    descricao_despesa_transferencia_dbedt: TDBEdit;
    nm_beneficiario_retirada_lbl: TLabel;
    nr_conta_transf_de_dbedt: TDBEdit;
    Label25: TLabel;
    Label33: TLabel;
    saldo_hoje_lbl: TLabel;
    saldo_final_lbl: TLabel;
    agencias_tbl: TTable;
    banco_atu_lb: TLabel;
    banco_atual_lb: TLabel;
    Label36: TLabel;
    agencia_atual_lb: TLabel;
    Label38: TLabel;
    conta_atual_lb: TLabel;
    procedure Inserir_btnClick(Sender: TObject);
    procedure Salvar_btnClick(Sender: TObject);
    procedure Cancelar_btnClick(Sender: TObject);
    procedure banco_atual_lbDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  movimentacao_frm: Tmovimentacao_frm;

implementation

{$R *.dfm}

procedure Tmovimentacao_frm.Inserir_btnClick(Sender: TObject);
begin
  case tipo_moviment_pc.TabIndex of
    0 : cheque_ts.Enabled := True;
    1 : deposito_ts.Enabled := True;
    2 : transferencia_ts.Enabled := True;
    3 : retirada_ts.Enabled := True;
    4 : retirada_din_ts.Enabled := True;
  end;

  movimentacao_tbl.Insert;
  Inserir_btn.Enabled := False;
  Cancelar_btn.Caption := '&Cancelar';
end;

procedure Tmovimentacao_frm.Salvar_btnClick(Sender: TObject);
begin
  if not (movimentacao_tbl.State = dsBrowse) then
  begin
    try
      case tipo_moviment_pc.TabIndex of
        0 : cheque_ts.Enabled := False;
        1 : deposito_ts.Enabled := False;
        2 : transferencia_ts.Enabled := False;
        3 : retirada_ts.Enabled := False;
        4 : retirada_din_ts.Enabled := False;
      end;

      movimentacao_tbl.Post;
    except
      movimentacao_tbl.Cancel;
      ShowMessage('Já existe um banco cadastrado com esse valor.');
    end;
    Inserir_btn.Enabled := True;
  end;
  Cancelar_btn.Caption := '&Excluir';
end;

procedure Tmovimentacao_frm.Cancelar_btnClick(Sender: TObject);
begin
  if Cancelar_btn.Caption = '&Excluir' then
    movimentacao_tbl.Delete
  else
    movimentacao_tbl.Cancel;
  Inserir_btn.Enabled := True;
  Cancelar_btn.Caption := '&Excluir';
end;

procedure Tmovimentacao_frm.banco_atual_lbDblClick(Sender: TObject);
var
  xBanco : Integer;
begin
xBanco := vBanco;
  if (TLabel(Sender).Name = 'banco_atual_lb') or (TLabel(Sender).Name = 'banco_atu_lb') then
    begin
      uChangeBanco.mudar_banco_frm.ShowModal;
      if vBanco <> xBanco then
        banco_atual_lb.Caption := IntToStr(vBanco);
    end;

end;

end.
