unit uDesligarLampadaComando;

interface

uses
  uComando, uLampada;

type
  TDesligarLampadaComando = class(TInterfacedObject, IComando)
  private
    lampada: TLampada;
  public
    constructor Create(poLampada: TLampada);
    procedure executar;
  end;

implementation

{ TDesligarLampadaComando }

constructor TDesligarLampadaComando.Create(poLampada: TLampada);
begin
  lampada := poLampada;
end;

procedure TDesligarLampadaComando.executar;
begin
  lampada.desligar;
end;

end.
