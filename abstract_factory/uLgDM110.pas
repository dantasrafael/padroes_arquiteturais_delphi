unit uLgDM110;

interface

uses
  uCelularBasico;

type
  TLgDM110 = class(TInterfacedObject, ICelularBasico)
  private
    modelo: string;
    fabricante: string;
  public
    constructor Create;
    function getDadosCelularBasico: string;
  end;

implementation

{ TLgDM110 }

constructor TLgDM110.Create;
begin
  modelo := 'DM110';
  fabricante := 'LG';
end;

function TLgDM110.getDadosCelularBasico: string;
begin
  Result := 'Fabricante: ' + fabricante + ' Modelo: ' + modelo;
end;

end.
