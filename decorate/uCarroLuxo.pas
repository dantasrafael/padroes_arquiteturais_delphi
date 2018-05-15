unit uCarroLuxo;

interface

uses
  System.SysUtils,
  uCarroDecorator,
  uInterfaceCarro;

type
  TCarroLuxo = class(TCarroDecorator)
  public
    constructor Create(poCarro: IInterfaceCarro);
    procedure Montar; override;
  end;

implementation

{ TCarroLuxo }

constructor TCarroLuxo.Create(poCarro: IInterfaceCarro);
begin
  inherited Create(poCarro);
end;

procedure TCarroLuxo.Montar;
begin
  carro.Montar;
  Writeln('Adicionando características de Carro Luxo.');
end;

end.
