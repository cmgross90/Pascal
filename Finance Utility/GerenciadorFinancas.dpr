program GerenciadorFinancas;

uses
  Forms,
  uMenu in 'uMenu.pas' {menu_frm},
  uCadastroBancos in 'uCadastroBancos.pas' {cadastro_bancos_frm},
  uCadastroAgencias in 'uCadastroAgencias.pas' {cadastro_agencias_frm},
  uCadastroContas in 'uCadastroContas.pas' {cadastro_contas_frm},
  uMovimentacaoFinanceira in 'uMovimentacaoFinanceira.pas' {movimentacao_frm},
  uChangeBanco in 'uChangeBanco.pas' {mudar_banco_frm},
  uVariaveis in 'uVariaveis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu_frm, menu_frm);
  Application.CreateForm(Tcadastro_bancos_frm, cadastro_bancos_frm);
  Application.CreateForm(Tcadastro_agencias_frm, cadastro_agencias_frm);
  Application.CreateForm(Tcadastro_contas_frm, cadastro_contas_frm);
  Application.CreateForm(Tmovimentacao_frm, movimentacao_frm);
  Application.CreateForm(Tmudar_banco_frm, mudar_banco_frm);
  Application.Run;
end.
