unit uSamsungGalaxy;

interface

uses
  uCelularSmartphone;

type
  TSamsungGalaxy = class(TInterfacedObject, ICelularSmartphone)
  private
    modelo: string;
    fabricante: string;
    conectividade: string;
  public
    constructor Create;
    function getDadosSmartphone: string;
  end;

implementation

{ TSamsungGalaxy }

constructor TSamsungGalaxy.Create;
begin
  modelo := 'Galaxy';
  fabricante := 'Samsung';
  conectividade := '3G';
end;

function TSamsungGalaxy.getDadosSmartphone: string;
begin
  Result := 'Fabricante: ' + fabricante + ' Modelo: ' + modelo +
    ' Conectividade: ' + conectividade;
end;

end.
