program PrjDado;

uses
  Forms,
  UnDado in 'UnDado.pas' {FrmGeneral},
  UnDadoRejogar in 'UnDadoRejogar.pas' {FrmSelecionar};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmGeneral, FrmGeneral);
  Application.CreateForm(TFrmSelecionar, FrmSelecionar);
  Application.Run;
end.
