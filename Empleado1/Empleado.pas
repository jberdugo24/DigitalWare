unit Empleado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    TEdit_Name: TEdit;
    TEdit_Horas: TEdit;
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

procedure TForm1.Button1Click(Sender: TObject);
Var
 nombre : String;
 horas, extras : Integer;
 salario : Double;
begin
  extras := 0;
  horas := 0;
  nombre :=  TEdit_Name.text;
  horas := StrToInt(TEdit_Horas.text);
  if (horas > 0) and (horas <= 35) then
  begin
    salario := horas * 15000;
  end
  else if (horas > 35) then
    begin
    extras := horas - 35;
    salario := (15000*35)+extras*19000;
    end
  else
  begin
    ShowMessage ('Este empleado no trabaj?');
  end;
  ShowMessage ('EL empleado es: '+ nombre + #13 + 'Sus Horas laboradas son: ' +
   IntToStr(horas)+ #13 + 'De estas tuvo: '+ IntToStr(extras) + ' horas extras' + #13 + 'Su salario ser?:  $' + FloatToStr(salario));



end;

end.
