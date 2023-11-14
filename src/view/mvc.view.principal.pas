unit mvc.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses mvc.model.entity.impl.cliente, mvc.utils.impl.query;

procedure TForm1.Button1Click(Sender: TObject);
begin
  var lCliente := TCliente.New;

  Memo1.Lines.Add(TQuery.New(lCliente).Insert);
end;

end.
