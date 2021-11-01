program Clientes;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCliente in 'UCliente.pas' {frmCliente},
  UDataModule in 'UDataModule.pas' {DataModulo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModulo, DataModulo);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.Run;
end.
