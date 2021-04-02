program PrjModo2;

uses
  Forms,
  Modo2 in 'Modo2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
