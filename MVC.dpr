program MVC;

uses
  Vcl.Forms,
  mvc.view.principal in 'src\view\mvc.view.principal.pas' {Form1},
  mvc.model.entity.impl.cliente in 'src\model\entity\impl\mvc.model.entity.impl.cliente.pas',
  mvc.model.entity.impl.produtos in 'src\model\entity\impl\mvc.model.entity.impl.produtos.pas',
  mvc.model.entity.interfaces in 'src\model\entity\mvc.model.entity.interfaces.pas',
  mvc.model.entity.impl.pedidos in 'src\model\entity\impl\mvc.model.entity.impl.pedidos.pas',
  mvc.model.entity.impl.entity in 'src\model\entity\impl\mvc.model.entity.impl.entity.pas',
  mvc.model.entity.impl.pedidosItens in 'src\model\entity\impl\mvc.model.entity.impl.pedidosItens.pas',
  mvc.model.connection.interfaces in 'src\model\connection\mvc.model.connection.interfaces.pas',
  mvc.model.connection.impl.firedac in 'src\model\connection\impl\mvc.model.connection.impl.firedac.pas',
  mvc.model.connection.impl.query in 'src\model\connection\impl\mvc.model.connection.impl.query.pas',
  mvc.model.connection.impl.configuration in 'src\model\connection\impl\mvc.model.connection.impl.configuration.pas',
  mvc.model.dao.interfaces in 'src\model\dao\mvc.model.dao.interfaces.pas',
  mvc.model.dao.impl in 'src\model\dao\impl\mvc.model.dao.impl.pas',
  mvc.utils.inferfaces in 'src\utils\mvc.utils.inferfaces.pas',
  mvc.utils.impl.query in 'src\utils\impl\mvc.utils.impl.query.pas',
  mvc.utils.impl.rttihelps in 'src\utils\impl\mvc.utils.impl.rttihelps.pas',
  mvc.utils.impl.rttiatributos in 'src\utils\impl\mvc.utils.impl.rttiatributos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
