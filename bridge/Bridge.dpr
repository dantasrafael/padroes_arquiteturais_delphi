program Bridge;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uControleRemotoAbstrato in 'uControleRemotoAbstrato.pas',
  uControleRemotoLogitech in 'uControleRemotoLogitech.pas',
  uTelevisaoAbstrata in 'uTelevisaoAbstrata.pas',
  uTelevisaoLCD in 'uTelevisaoLCD.pas',
  uTelevisaoLED in 'uTelevisaoLED.pas';

var
  televisao: TTelevisaoAbstrata;
  controleRemoto: TControleRemotoAbstrato;
begin
  try
    televisao := TTelevisaoLCD.Create;
    controleRemoto := TControleRemotoLogitech.Create(televisao);

    televisao.ligar;
    controleRemoto.configurarCanal(100);

    Writeln('Canal selecionado: ' + IntToStr(televisao.getCanal));
    televisao.desligar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
