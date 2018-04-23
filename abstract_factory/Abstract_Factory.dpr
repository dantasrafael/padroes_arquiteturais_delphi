program Abstract_Factory;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCelularBasico in 'uCelularBasico.pas',
  uCelularSmartphone in 'uCelularSmartphone.pas',
  uFabricaCelular in 'uFabricaCelular.pas',
  uFabricaLG in 'uFabricaLG.pas',
  uLgG4 in 'uLgG4.pas',
  uLgDM110 in 'uLgDM110.pas',
  uSamsungGalaxy in 'uSamsungGalaxy.pas',
  uSamsungE1270 in 'uSamsungE1270.pas',
  uFabricaSamsung in 'uFabricaSamsung.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
