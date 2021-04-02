program PrjHourControl;

uses
  Forms,
  uControl in 'uControl.pas' {FrmPonto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmControl, FrmControl);
  Application.Run;
end.
