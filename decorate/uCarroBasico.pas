unit uCarroBasico;

interface

uses
  System.SysUtils,
  uInterfaceCarro;

type
  TCarroBasico = class(TInterfacedObject, IInterfaceCarro)
  public
    procedure Montar;
  end;

implementation

{ TCarroBasico }

procedure TCarroBasico.Montar;
begin
  Writeln(#13#10 + 'Carro B�sico');
end;

end.
