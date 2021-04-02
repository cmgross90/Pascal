unit uControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, DBGrids, Mask;

type
  TFrmControl = class(TForm)
    Panel2: TPanel;
    LbBalance: TLabel;
    LbHours: TLabel;
    SGrid: TStringGrid;
    Panel1: TPanel;
    RGroup: TRadioGroup;
    BtnInsertTime: TButton;
    Label1: TLabel;
    EdTime: TMaskEdit;
    SaveDlg: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure BtnInsertTimeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    LineCount: Integer;
    procedure SetColumnsText;
    procedure SetColumnsWidth;
    procedure CalculateTotalTime;
  public
    { Public declarations }
  end;

var
  FrmControl: TFrmControl;

implementation

{$R *.dfm}

procedure TFrmControl.FormCreate(Sender: TObject);
begin
  LineCount := 1;
  SetColumnsWidth;
  SetColumnsText;
end;

procedure TFrmControl.BtnInsertTimeClick(Sender: TObject);
var
  xTime: TDateTime;
begin
  case RGroup.ItemIndex of
  0:  begin
        SGrid.Rows[LineCount].Strings[0] := DateTimeToStr(Date);
        SGrid.Rows[LineCount].Strings[1] := EdTime.Text;
        RGroup.ItemIndex := 1;
        EdTime.SetFocus;
      end;

  1:  begin
        SGrid.Rows[LineCount].Strings[2] := EdTime.Text;
        RGroup.ItemIndex := 2;
        EdTime.SetFocus;
      end;

  2:  begin
        SGrid.Rows[LineCount].Strings[3] := EdTime.Text;
        RGroup.ItemIndex := 3;
        EdTime.SetFocus;
      end;

  3:  begin
        SGrid.Rows[LineCount].Strings[4] := EdTime.Text;
        RGroup.ItemIndex := 1;
        EdTime.SetFocus;
      end;
  end;

  if (SGrid.Rows[LineCount].Strings[0] <> '') and (SGrid.Rows[LineCount].Strings[1] <> '') and
     (SGrid.Rows[LineCount].Strings[2] <> '') and (SGrid.Rows[LineCount].Strings[3] <> '') and
     (SGrid.Rows[LineCount].Strings[4] <> '') then
    begin
    xTime := (StrToTime(SGrid.Rows[LineCount].Strings[2]) - StrToTime(SGrid.Rows[LineCount].Strings[1])) +
             (StrToTime(SGrid.Rows[LineCount].Strings[4]) - StrToTime(SGrid.Rows[LineCount].Strings[3]));
    SGrid.Rows[LineCount].Strings[6] := TimeToStr(xTime)
    end;

  CalculateTotalTime;
  EdTime.Clear;
end;

procedure TFrmControl.FormShow(Sender: TObject);
begin
  EdTime.SetFocus;
end;

procedure TFrmControl.SetColumnsText;
begin
SGrid.Cols[0].Text := '                   Date';
SGrid.Cols[1].Text := '         Arrival Time';
SGrid.Cols[2].Text := '    Lunch time start';
SGrid.Cols[3].Text := 'Lunch time finish';
SGrid.Cols[4].Text := '            Departure Time';
SGrid.Cols[6].Text := '            Total Time';
end;

procedure TFrmControl.SetColumnsWidth;
var
  i: integer;
begin
  for i := 0 to SGrid.ColCount -1 do
    SGrid.ColWidths[i] := 160;

  SGrid.ColWidths[5] := 10;
end;

procedure TFrmControl.CalculateTotalTime;
begin
if (SGrid.Rows[LineCount].Strings[6] <> '') then
  begin
  if (SGrid.Rows[LineCount].Strings[6] <= '08:45') then
    begin
    LbHours.Caption := TimeToStr(StrToTime(LbHours.Caption) - (StrToTime('08:45') - StrToTime(SGrid.Rows[LineCount].Strings[6])));
    Inc(LineCount);
    SGrid.RowCount := SGrid.RowCount + 1;
    end
  else
    begin
    LbHours.Caption := TimeToStr(StrToTime(LbHours.Caption) + (StrToTime(SGrid.Rows[LineCount].Strings[6]) - StrToTime('08:45')));
    Inc(LineCount);
    SGrid.RowCount := SGrid.RowCount + 1;
    end;
  end;
end;

procedure TFrmControl.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
SaveDlg.Execute;
for i := 0 to LineCount -1 do
  begin
  SaveDlg.
  end;
end;

end.
