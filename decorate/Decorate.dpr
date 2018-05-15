program Decorate;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uInterfaceCarro in 'uInterfaceCarro.pas',
  uCarroBasico in 'uCarroBasico.pas',
  uCarroDecorator in 'uCarroDecorator.pas',
  uCarroLuxo in 'uCarroLuxo.pas',
  uCarroSport in 'uCarroSport.pas';

var
  sportsCar: IInterfaceCarro;
  sportsLuxuryCar: IInterfaceCarro;
begin
  try
    sportsCar := TCarroSport.Create(TCarroBasico.Create);
    sportsCar.Montar;

    sportsLuxuryCar := TCarroSport.Create(TCarroLuxo.Create(TCarroBasico.Create));
    sportsLuxuryCar.Montar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
