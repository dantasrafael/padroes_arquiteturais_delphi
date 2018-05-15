program Flyweight;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uFormaGeometrica in 'uFormaGeometrica.pas',
  uCirculo in 'uCirculo.pas',
  uFabricaFormaGeometrica in 'uFabricaFormaGeometrica.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
