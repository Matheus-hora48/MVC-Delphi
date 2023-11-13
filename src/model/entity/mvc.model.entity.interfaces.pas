unit mvc.model.entity.interfaces;

interface

type
  iCliente = interface
    function SetCodigo(const Value: Integer): iCliente;
    function GetCodigo: Integer;
    function SetNome(const Value: String): iCliente;
    function GetNome: String;
    function SetCidade(const Value: String): iCliente;
    function GetCidade: String;
    function SetEstado(const Value: String): iCliente;
    function GetEstado: String;
  end;

  iProdutos = interface
    function SetCodigo(const Value: Integer): iProdutos;
    function GetCodigo: Integer;
    function SetDescricao(const Value: String): iProdutos;
    function GetDescricao: String;
    function SetPrecoVenda(const Value: Currency): iProdutos;
    function GetPrecoVenda: Currency;
  end;

  iPedidos = interface
    function SetNumeroPedido(Value: Integer): iPedidos;
    function GetNumeroPedido: Integer;
    function SetDataEmissao(Value: TDateTime): iPedidos;
    function GetDataEmissao: TDateTime;
    function SetCodigoCliente(const Value: Integer): iPedidos;
    function GetCodigoCliente: Integer;
    function SetValorTotal(const Value: Currency): iPedidos;
    function GetValorTotal: Currency;
  end;

  iPedidosItens = interface
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

  iEntity = interface
    function Cliente: iCliente;
    function Produtos: iProdutos;
    function Pedidos: iPedidos;
    function PedidoItens: iPedidosItens;
  end;

implementation

end.
