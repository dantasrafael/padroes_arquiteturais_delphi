unit uSamsungE1270;

interface

uses
  uCelularBasico;

type
  TSamsungE1270 = class(TInterfacedObject, ICelularBasico)
  private
    modelo: string;
    fabricante: string;
  public
    constructor Create;
    function getDadosCelularBasico: string;
  end;

implementation

{ TSamsungE1270 }

constructor TSamsungE1270.Create;
begin
  modelo := 'E1270';
  fabricante := 'Samsung';
end;

function TSamsungE1270.getDadosCelularBasico: string;
begin
  Result := 'Fabricante: ' + fabricante + ' Modelo: ' + modelo;
end;

end.
