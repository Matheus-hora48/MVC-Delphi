program MVC;

uses
  Vcl.Forms,
  mvc.view.principal in 'src\view\mvc.view.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
