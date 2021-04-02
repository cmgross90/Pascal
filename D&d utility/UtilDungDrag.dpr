program UtilDungDrag;

uses
  Forms,
  uMain in 'uMain.pas' {FrmMain},
  uChangeName in 'uChangeName.pas' {FrmChangeName},
  uFichaCompleta in 'uFichaCompleta.pas' {FrmFichaCompl};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Utilitário D&d';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmChangeName, FrmChangeName);
  Application.CreateForm(TFrmFichaCompl, FrmFichaCompl);
  Application.Run;
end.
