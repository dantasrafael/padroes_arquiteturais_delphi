program Command;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uLampada in 'uLampada.pas',
  uComando in 'uComando.pas',
  uInterruptor in 'uInterruptor.pas',
  uDesligarLampadaComando in 'uDesligarLampadaComando.pas',
  uLigarLampadaComando in 'uLigarLampadaComando.pas';

var
  interruptor: TInterruptor;
  lampada: TLampada;
  ligarLampada: IComando;
  desligarLampada: IComando;
begin
  try
    interruptor := TInterruptor.Create;
    lampada := TLampada.Create;
    ligarLampada := TLigarLampadaComando.Create(lampada);
    desligarLampada := TDesligarLampadaComando.Create(lampada);

    interruptor.setComando(ligarLampada);
    interruptor.pressionarInterruptor;
    interruptor.setComando(desligarLampada);
    interruptor.pressionarInterruptor;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
