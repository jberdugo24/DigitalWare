unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TDataModulo = class(TDataModule)
    conexion: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    function insertar (id: Integer; nombre, tipo_id, numero_id, legal, telefono, email, contacto: string; activos, pasivos, patrimonio: Double) : boolean;
    function actualizar (id: Integer; nombre, tipo_id, numero_id, legal, telefono, email, contacto: string; activos, pasivos, patrimonio: Double) : boolean;
    function eliminar (id:string):boolean;
  end;


var
  DataModulo: TDataModulo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

function TDataModulo.eliminar(id: String): boolean;
var
  sql : string;
begin
  result := false;
  sql := 'delete from clientes where id='''+id+''';';
  try
    conexion.ExecSQL(sql, []);
    result := True;
    except
  end;

end;

function TDataModulo.actualizar(id: Integer; nombre, tipo_id, numero_id, legal, telefono, email, contacto: string; activos, pasivos, patrimonio: Double): boolean;
var
  sql : string;
begin
  result := false;
  sql := 'update clientes set nombre='''+nombre+''',tipo_documento_identificacion='''+tipo_id+''',numero_documento_identificacion='''+numero_id+''',nombre_representante_legal='''+legal+''',telefono='''+telefono+''',email='''+email+''',persona_contacto='''+contacto+''',valor_activos='''+floatToStr(activos)+''',valor_pasivos='''+floatToStr(pasivos)+''',valor_patrimonio='''+floatToStr(patrimonio)+''' where codigo=''' + IntToStr(id)+'''' ;
  try
    conexion.ExecSQL(sql, []);
    result := True;
    except
  end;

end;



function TDataModulo.insertar(id: Integer; nombre, tipo_id, numero_id, legal, telefono, email, contacto: string; activos, pasivos, patrimonio: Double): boolean;
var
  sql : string;
begin
  result := false;
  sql := 'insert into clientes (codigo, nombre, tipo_documento_identificacion, numero_documento_identificacion, nombre_representante_legal, telefono, email, persona_contacto, valor_activos, valor_pasivos, valor_patrimonio)values('''+intToStr(id)+''','''+nombre+''','''+tipo_id+''','''+numero_id+''','''+legal+''','''+telefono+''','''+email+''','''+contacto+''','''+FloatToStr(activos)+''','''+FloatToStr(pasivos)+''','''+FloatToStr(patrimonio)+''')';
  try
    conexion.ExecSQL(sql, []);
    result := True;
    except
  end;

end;

end.
