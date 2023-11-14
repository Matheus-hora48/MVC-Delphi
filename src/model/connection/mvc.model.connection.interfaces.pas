unit mvc.model.connection.interfaces;

interface

uses
  Data.DB;

type
  iConnection = interface
    function Connection: TCustomConnection;
  end;

  iQuery = interface
    procedure Query(const Statement: string; Params: Array of Variant ); overload;
    function Query(const Statement: Variant; Params: Array of Variant): TDataSet; overload;
  end;

  iConfiguration = interface
    function GetProtocolo: String;
    function SetServidor(const value: String): iConfiguration;
    function GetServidor: String;
    function SetPorta(const value: Integer): iConfiguration;
    function GetPorta: Integer;
    function SetUsuario(const value: String): iConfiguration;
    function GetUsuario: String;
    function SetSenha(const value: String): iConfiguration;
    function GetSenha: String;
    function SetCaminho(const value: String): iConfiguration;
    function GetCaminho: String;
    function SetDriveName(const value: String): iConfiguration;
    function GetDriveName: String;
  end;

implementation

end.
