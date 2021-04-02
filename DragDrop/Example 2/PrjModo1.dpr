program PrjModo1;

uses
  Forms,
  Modo1 in 'Modo1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
