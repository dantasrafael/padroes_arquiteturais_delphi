program Facade;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uCPU in 'uCPU.pas',
  uHardDrive in 'uHardDrive.pas',
  uMemory in 'uMemory.pas',
  uComputer in 'uComputer.pas';

var
  computer: TComputer;
begin
  try
    computer := TComputer.Create;
    computer.Executar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
