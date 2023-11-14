unit mvc.model.connection.impl.configuration;

interface

uses
  System.SysUtils,
  IniFiles,
  mvc.model.connection.interfaces;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  const
    SECTION = 'CONFIG';
    CAMINHO = 'CAMINHO';
    PORTA = 'PORTA';
    SERVIDOR = 'SERVIDOR';
    USUARIO = 'USERNAME';
    SENHA = 'PASSWORD';
    DRIVERNAME = 'DRIVERNAME';
  private
    FArq : TIniFile;

    constructor Create(FileName: String);
    destructor Destroy; override;
  public
    class function New(FileName: String): iConfiguration;
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

uses
  Winapi.Windows, System.Types;

{ TConfiguration }

constructor TConfiguration.Create(FileName: String);
begin
  FArq := TIniFile.Create(FileName);
end;

destructor TConfiguration.Destroy;
begin
  Farq.Free;
  inherited;
end;

function TConfiguration.GetCaminho: String;
begin
  Result := Farq.ReadString(SECTION, CAMINHO, '');
end;

function TConfiguration.GetDriveName: String;
begin
  Result := Farq.ReadString(SECTION, DRIVERNAME, '');
end;

function TConfiguration.GetPorta: Integer;
begin
  Result := Farq.ReadInteger(SECTION, PORTA, 0);
end;

function TConfiguration.GetProtocolo: String;
begin
  Result := 'LOCAL' ;
  if not (Farq.ReadString(SECTION, SERVIDOR, '').Equals('LOCALHOST') or
     Farq.ReadString(SECTION, SERVIDOR, '').Equals('127.0.0.1')) then
     Result := 'TCP'
end;

function TConfiguration.GetSenha: String;
begin
  Result := Farq.ReadString(SECTION, SENHA, '');
end;

function TConfiguration.GetServidor: String;
begin
  Result := Farq.ReadString(SECTION, SERVIDOR, '');
end;

function TConfiguration.GetUsuario: String;
begin
  Result := Farq.ReadString(SECTION, USUARIO, '');
end;

class function TConfiguration.New(FileName: String): iConfiguration;
begin
  Result := self.Create(FileName);
end;

function TConfiguration.SetCaminho(const value: String): iConfiguration;
begin
  REsult := Self;
  FArq.WriteString(SECTION, CAMINHO, value);
end;

function TConfiguration.SetDriveName(const value: String): iConfiguration;
begin
  REsult := Self;
  FArq.WriteString(SECTION, DRIVERNAME, value);
end;

function TConfiguration.SetPorta(const value: Integer): iConfiguration;
begin
  REsult := Self;
  FArq.WriteInteger(SECTION, PORTA, value);
end;

function TConfiguration.SetSenha(const value: String): iConfiguration;
begin
  REsult := Self;
  FArq.WriteString(SECTION, SENHA, value);
end;

function TConfiguration.SetServidor(const value: String): iConfiguration;
begin
  REsult := Self;
  FArq.WriteString(SECTION, SERVIDOR, value);
end;

function TConfiguration.SetUsuario(const value: String): iConfiguration;
begin
  REsult := Self;
  FArq.WriteString(SECTION, USUARIO, value);
end;

end.
