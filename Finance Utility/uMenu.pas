unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, uCadastroBancos, uCadastroAgencias, uCadastroContas, uMovimentacaoFinanceira,
  ADODB, Provider, StdCtrls;

type
  Tmenu_frm = class(TForm)
    menu_principal: TMainMenu;
    Cadastros_mi: TMenuItem;
    Bancos_mi: TMenuItem;
    Agencias_mi: TMenuItem;
    Contas_mi: TMenuItem;
    Movimentos_mi: TMenuItem;
    Relatrios_mi: TMenuItem;
    Ajuda_mi: TMenuItem;
    Sobremi1: TMenuItem;
    Sair_mi: TMenuItem;
    DB: TDatabase;
    procedure Bancos_miClick(Sender: TObject);
    procedure Agencias_miClick(Sender: TObject);
    procedure Contas_miClick(Sender: TObject);
    procedure Movimentos_miClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu_frm: Tmenu_frm;

implementation

{$R *.dfm}

procedure Tmenu_frm.Bancos_miClick(Sender: TObject);
begin
  cadastro_bancos_frm.ShowModal;
end;

procedure Tmenu_frm.Agencias_miClick(Sender: TObject);
begin
  cadastro_agencias_frm.ShowModal;
end;

procedure Tmenu_frm.Contas_miClick(Sender: TObject);
begin
  cadastro_contas_frm.ShowModal;
end;

procedure Tmenu_frm.Movimentos_miClick(Sender: TObject);
begin
  movimentacao_frm.ShowModal;
end;

end.
