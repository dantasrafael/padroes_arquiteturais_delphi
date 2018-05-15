unit uCarroSport;

interface

uses
  System.SysUtils,
  uCarroDecorator,
  uInterfaceCarro;

type
  TCarroSport = class(TCarroDecorator)
  public
    constructor Create(poCarro: IInterfaceCarro);
    procedure Montar; override;
  end;

implementation

{ TCarroSport }

constructor TCarroSport.Create(poCarro: IInterfaceCarro);
begin
  inherited Create(poCarro);
end;

procedure TCarroSport.Montar;
begin
  carro.Montar;
  Writeln('Adicionando características de Carro Sport.');
end;

end.
