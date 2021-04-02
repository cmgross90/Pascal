unit UnHi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
ShowMessage('Hi!');
ShowMessage('How are you?');
ShowMessage('Nice :)');
ShowMessage('Am I bothering you?');
ShowMessage('Are you sure?');
ShowMessage('Can not exit?');
ShowMessage('Or press the X button?');
ShowMessage('What can I say to you...');
ShowMessage('Hang on.');
ShowMessage('There is not much left..');
ShowMessage('You can be sure of that');
ShowMessage('Hang on a little bit more');
ShowMessage('Have faith that this is almost finishing');
ShowMessage('Joke!!!!');
ShowMessage('kkkkk');
ShowMessage('I think you this will be a little bit longer than you expected.');
ShowMessage('But have faith.');
ShowMessage('I know that you hate this');
ShowMessage('But it is not my fault ');
ShowMessage('Because you have pressed the button');
ShowMessage('Not me');
ShowMessage('lol');
ShowMessage('But, you know what?');
ShowMessage('A few more seconds have passed');
ShowMessage('So... keep pressing the button');
ShowMessage('Because you are almost at the end');
ShowMessage('Continue to believe');
ShowMessage('Because only then you go forward');
ShowMessage('And who knows, even today it will reach the end');
ShowMessage('Keep believing in yourself');
ShowMessage('And don't try to use an auto-clicker');
ShowMessage('Now it's time to say goodbye.');
ShowMessage('Bye =*');
end;

end.
