unit mvc.utils.impl.query;

interface

uses
  mvc.utils.inferfaces,
  Data.DB;

type
  TQuery = class(TInterfacedObject, iQuery)
    private
      FParent: TOBject;

      function Fields: String;
      function Params: String;
      function Tabela: String;

      constructor Create(parent: IInterface);
      destructor Destroy; override;
    public
      class function New(parent: IInterface): iQuery;
      function Insert: String;
      function Update: String;
      function Delete: String;
      function Select: String;
  end;

implementation

uses
  System.SysUtils,
  System.Rtti,mvc.utils.impl.rttihelps,
  mvc.utils.impl.rttiatributos;

{ TMyClass }

constructor TQuery.Create(parent: IInterface);
begin
  FParent := TObject(parent);
end;

function TQuery.Delete: String;
begin

end;

destructor TQuery.Destroy;
begin

  inherited;
end;

function TQuery.Fields: String;
var
  lContexto: TRttiContext;
  lTipo: TRttiType;
begin
  lContexto :=  TRttiContext.Create;
  try
    lTipo := lContexto.GetType(FParent.ClassInfo);

    for var I in lTipo.GetFields do
    begin
      if not I.Tem<Campo> then
        break;
      Result:= Result + I.GetAttibute<Campo>.Name + ', ';

    end;


  finally
    result := Copy(Result, 0, Result.Length-2);
    lContexto.Free;
  end;
end;

function TQuery.Insert: String;
begin

end;

class function TQuery.New(parent: IInterface): iQuery;
begin
  Result := Self.Create(parent);
end;

function TQuery.Params: String;
var
  lContexto: TRttiContext;
  lTipo: TRttiType;
begin
  lContexto := TRttiContext.Create;
  try
    lTipo := lContexto.GetType(FParent.ClassInfo);

    for var I in lTipo.GetFields do
    begin
      if not I.Tem<Campo> then
        Break;
      Result := Result + ':' +  I.GetAttibute<Campo>.Name + ', ';
    end;


  finally
    result := Copy(Result, 0, Result.Length-2) + ' ';
    lContexto.Free;
  end;

end;

function TQuery.Select: String;
begin

end;

function TQuery.Tabela: String;
begin

end;

function TQuery.Update: String;
begin

end;

end.
