unit uCarroDecorator;

interface

uses
  System.SysUtils,
  uInterfaceCarro;

type
  TCarroDecorator = class(TInterfacedObject, IInterfaceCarro)
  protected
    carro: IInterfaceCarro;
  public
    constructor Create(poCarro: IInterfaceCarro);
    procedure Montar; virtual;
  end;

implementation

{ TCarroDecorator }

constructor TCarroDecorator.Create(poCarro: IInterfaceCarro);
begin
  carro := poCarro;
end;

procedure TCarroDecorator.Montar;
begin
  carro.montar;
end;

end.
