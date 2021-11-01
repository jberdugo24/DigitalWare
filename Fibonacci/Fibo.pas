unit Fibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    txtTermino: TEdit;
    Button1: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Fibonacci(n:integer):Integer;
begin
  if (n = 0) or (n = 1) then
      Fibonacci := 1
  else
    Fibonacci := Fibonacci(n-1) + Fibonacci(n-2);
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  I, numero:integer;
begin
  numero := strtoint(txtTermino.Text);
  listBox1.Clear;
  for I := 0 to numero-1 do
  begin
    ListBox1.Items.Add(intToStr(Fibonacci(I)));
  end;
end;
end.
