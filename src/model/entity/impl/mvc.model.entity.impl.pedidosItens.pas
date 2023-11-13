unit mvc.model.entity.impl.pedidosItens;

interface

uses
  mvc.model.entity.interfaces;

type
  TPedidosItens = class(TInterfacedObject, iPedidosItens)
  private
    FId: Integer;
    FNumeroPedido: Integer;
    FCodigoProduto: Integer;
    FQuantidade: Integer;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  public
    class function New: iPedidosItens;
    function SetId(const Value: Integer): iPedidosItens;
    function GetId: Integer;
    function SetNumeroPedido(const Value: Integer): iPedidosItens;
    function GetNumeroPedido: Integer;
    function SetCodigoProduto(const Value: Integer): iPedidosItens;
    function GetCodigoProduto: Integer;
    function SetQuantidade(const Value: Integer): iPedidosItens;
    function GetQuantidade: Integer;
    function SetValorUnitario(const Value: Currency): iPedidosItens;
    function GetValorUnitario: Currency;
    function SetValorTotal(const Value: Currency): iPedidosItens;
    function GetValorTotal: Currency;
end;


implementation

{ TPedidosItens }

function TPedidosItens.GetCodigoProduto: Integer;
begin
  Result := FCodigoProduto;
end;

function TPedidosItens.GetId: Integer;
begin
  Result := FCodigoProduto;
end;

function TPedidosItens.GetNumeroPedido: Integer;
begin
  Result := FNumeroPedido;
end;

function TPedidosItens.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

function TPedidosItens.GetValorTotal: Currency;
begin
  Result := FValorTotal;
end;

function TPedidosItens.GetValorUnitario: Currency;
begin
  Result := FValorUnitario;
end;

class function TPedidosItens.New: iPedidosItens;
begin
  Result := Self.Create;
end;

function TPedidosItens.SetCodigoProduto(const Value: Integer): iPedidosItens;
begin
  Result := Self;
  FCodigoProduto := Value;
end;

function TPedidosItens.SetId(const Value: Integer): iPedidosItens;
begin
  Result := Self;
  FId := Value;
end;

function TPedidosItens.SetNumeroPedido(const Value: Integer): iPedidosItens;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TPedidosItens.SetQuantidade(const Value: Integer): iPedidosItens;
begin
  Result := Self;
  FQuantidade := Value;
end;

function TPedidosItens.SetValorTotal(const Value: Currency): iPedidosItens;
begin
  Result := Self;
  FValorTotal := Value;
end;

function TPedidosItens.SetValorUnitario(const Value: Currency): iPedidosItens;
begin
  Result := Self;
  FValorUnitario := Value;
end;

end.
