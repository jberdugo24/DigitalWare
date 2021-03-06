unit UCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TfrmCliente = class(TForm)
    txtcodigo: TEdit;
    txtnombre: TEdit;
    txttipodocumento: TEdit;
    txtdocumento: TEdit;
    txtcontacto: TEdit;
    txtemail: TEdit;
    txtnombrelegal: TEdit;
    txttelefono: TEdit;
    btnmodificar: TButton;
    btninsertar: TButton;
    btneliminar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txtpatrimonio: TEdit;
    txtpasivos: TEdit;
    txtactivos: TEdit;
    procedure btninsertarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure btnmodificarClick(Sender: TObject);
    procedure limpiar();
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.fmx}

uses UDataModule;

{ TfrmCliente }



procedure TfrmCliente.btneliminarClick(Sender: TObject);
begin
  if MessageDlg('Esta seguro de eliminar el registro?',TMsgDlgType.mtConfirmation, mbYesNo, 0)
   = mrYes  Then
  begin
  if (DataModulo.eliminar(txtcodigo.Text)) = True then
  begin
     showMessage ('Registro Eliminado: '+txtcodigo.Text);
     limpiar();
  end
  else
  begin
     showMessage ('Registro NO Eliminado, No existe: '+txtcodigo.Text);
  end;
  end;
end;

procedure TfrmCliente.btninsertarClick(Sender: TObject);
begin
  if (DataModulo.insertar(StrToInt(txtcodigo.Text),txtnombre.Text,txttipodocumento.Text,txtdocumento.Text,txtnombrelegal.Text,txttelefono.Text,txtemail.Text,txtcontacto.Text,StrToFloat(txtactivos.Text),StrToFloat(txtpasivos.Text),StrToFloat(txtpatrimonio.Text))) = True   Then
  begin
    showMessage ('Registro insertado: '+txtnombre.Text);
    limpiar();
  end
  else
  begin
     showMessage ('Registro NO insertado: '+txtnombre.Text);
  end;
end;

procedure TfrmCliente.btnmodificarClick(Sender: TObject);
begin
  begin
  if MessageDlg('Est? seguro de actualizar el registro?',TMsgDlgType.mtConfirmation, mbYesNo, 0)
   = mrYes  Then
  begin
  if (DataModulo.actualizar(StrToInt(txtcodigo.Text),txtnombre.Text,txttipodocumento.Text,txtdocumento.Text,txtnombrelegal.Text,txttelefono.Text,txtemail.Text,txtcontacto.Text,StrToFloat(txtactivos.Text),StrToFloat(txtpasivos.Text),StrToFloat(txtpatrimonio.Text))) = True   Then
  begin
     showMessage ('Registro actualizado: '+txtcodigo.Text);
     limpiar();
  end
  else
  begin
     showMessage ('Registro NO actualizado, No existe: '+txtcodigo.Text);
  end;
  end;
end;
end;

procedure TfrmCliente.limpiar();
begin
  txtcodigo.Text := '';
  txtnombre.Text := '';
  txttipodocumento.Text := '';
  txtdocumento.Text := '';
  txtnombrelegal.Text := '';
  txttelefono.Text := '';
  txtemail.Text := '';
  txtcontacto.Text := '';
  txtactivos.Text  := '';
  txtpasivos.Text := '';
  txtpatrimonio.Text := '';
end;

end.
