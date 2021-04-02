program PrjCombate;

uses
  Forms,
  UnCombate in 'UnCombate.pas' {FrmCombate};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCombate, FrmCombate);
  Application.Run;
end.
