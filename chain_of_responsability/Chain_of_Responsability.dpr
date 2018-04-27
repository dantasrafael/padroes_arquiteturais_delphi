program Chain_of_Responsability;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uCadeiaDeResponsabilidade in 'uCadeiaDeResponsabilidade.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
