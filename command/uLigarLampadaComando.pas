unit uLigarLampadaComando;

interface

uses
  uComando, uLampada;

type
  TLigarLampadaComando = class(TInterfacedObject, IComando)
  private
    lampada: TLampada;
  public
    constructor Create(poLampada: TLampada);
    procedure executar;
  end;

implementation

{ TLigarLampadaComando }

constructor TLigarLampadaComando.Create(poLampada: TLampada);
begin
  lampada := poLampada;
end;

procedure TLigarLampadaComando.executar;
begin
  lampada.ligar;
end;

end.
