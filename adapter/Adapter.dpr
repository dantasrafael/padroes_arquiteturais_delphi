program Adapter;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uCarteiraAdapter in 'uCarteiraAdapter.pas',
  uCarteiraMotorista_B in 'uCarteiraMotorista_B.pas',
  uCarteiraMotorista_D in 'uCarteiraMotorista_D.pas';

var
  carteiraMotorista_B: TCarteiraMotorista_B;
  carteiraMotorista_D: TCarteiraMotorista_D;
  carteiraAdapter: TCarteiraAdapter;
begin
  try
    carteiraMotorista_B := TCarteiraMotorista_B.Create;
    carteiraMotorista_D := TCarteiraMotorista_D.Create;
    carteiraAdapter := TCarteiraAdapter.Create(carteiraMotorista_D);
    carteiraAdapter.setCategoria(carteiraMotorista_B.getCategoria);

    Writeln(carteiraAdapter.getCategoria);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
