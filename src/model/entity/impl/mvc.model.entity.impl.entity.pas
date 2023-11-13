unit mvc.model.entity.impl.entity;

interface

uses
  mvc.model.entity.interfaces;

type
  TEntity = class(TInterfacedObject, iEntity)
  private
    FCliente: iCliente;
    FProdutos: iProdutos;
    FPedidos: iPedidos;
    FPedidosItens: iPedidosItens;
  public
    class function New: iEntity;
    function Cliente: iCliente;
    function Produtos: iProdutos;
    function Pedidos: iPedidos;
    function PedidoItens: iPedidosItens;
end;


implementation

uses
  mvc.model.entity.impl.cliente, mvc.model.entity.impl.pedidos,
  mvc.model.entity.impl.produtos, mvc.model.entity.impl.pedidosItens;

{ TEntity }

function TEntity.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TCliente.new;
  Result := FCliente;
end;

class function TEntity.New: iEntity;
begin
  Result := Self.Create;
end;

function TEntity.PedidoItens: iPedidosItens;
begin
  if not Assigned(FPedidosItens) then
    FPedidosItens := TPedidosItens.new;
  Result := FPedidosItens;
end;

function TEntity.Pedidos: iPedidos;
begin
  if not Assigned(FPedidos) then
    FPedidos := TPedidos.new;
  Result := FPedidos;
end;

function TEntity.Produtos: iProdutos;
begin
  if not Assigned(FProdutos) then
    FProdutos := TProdutos.new;
  Result := FProdutos;
end;

end.
