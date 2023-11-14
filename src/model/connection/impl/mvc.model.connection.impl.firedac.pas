unit mvc.model.connection.impl.firedac;

interface

uses
  Data. DB,
  Datasnap.DBClient,
  FireDAc.stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDac.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.phys.SQLite,
  FireDAC.phys.SQLiteDef,
  FireDAC.stan.ExprFuncs,
  FireDAC.phys.SQLiteWrapper.Stat,
  mvc.model.connection.interfaces;

type
  TConnectionFiredac = class(TInterfacedObject, iConnection)
    private
      FConn : TFDConnection;
      FConf : iConfiguration;

      constructor Create;
      destructor Destroy; override;
    public
      class function New: iconnection;
      function Connection: TCustomConnection;
  end;

implementation

uses
  System.SysUtils, mvc.model.connection.impl.configuration;

{ TConnectionFiredac }

function TConnectionFiredac.Connection: TCustomConnection;
begin
  Result := Fconn;
end;

constructor TConnectionFiredac.Create;
begin
  Fconn := TFDConnection.Create(nil);
  FConf := TConfiguration.New(ExtractFilePath(ParamStr(0)));
  try
    Fconn.Params.Clear;
    Fconn.Params.DriverID := FConf.GetDriveName;
    Fconn.Params.UserName := FConf.GetUsuario;
    Fconn.Params.Password := FConf.GetSenha;

    if FConf.GetDriveName.Equals('SQLITE') then
      Fconn.Params.Add('LockingMode=Normal');

  except
    raise Exception.Create('Erro ao tentar conectar com a base de dados, favor entrar em contato com o suporte');
  end;
end;


destructor TConnectionFiredac.Destroy;
begin
  Fconn.Free;
  inherited;
end;

class function TConnectionFiredac.New: iconnection;
begin
  Result := Self.Create;
end;

end.
