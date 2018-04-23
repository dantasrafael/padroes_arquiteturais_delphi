unit uLgG4;

interface

uses
  uCelularSmartphone;

type
  TLgG4 = class(TInterfacedObject, ICelularSmartphone)
  private
    modelo: string;
    fabricante: string;
    conectividade: string;
  public
    constructor Create;
    function getDadosSmartphone: string;
  end;

implementation

{ TLgG4 }

constructor TLgG4.Create;
begin
  modelo := 'G4';
  fabricante := 'LG';
  conectividade := '4G';
end;

function TLgG4.getDadosSmartphone: string;
begin
  Result := 'Fabricante: ' + fabricante + ' Modelo: ' + modelo +
    ' Conectividade: ' + conectividade;
end;

end.
