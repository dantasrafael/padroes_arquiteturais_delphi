unit uFabricaFormaGeometrica;

interface

uses
  System.SysUtils,
  System.Classes,
  uFormaGeometrica,
  uCirculo;

type
  TFabricaFormaGeometrica = class
  private
    mapaCirculo: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    function PegarCirculo(psCor: string): IFormaGeometrica;
  end;

implementation

{ TFabricaFormaGeometrica }

constructor TFabricaFormaGeometrica.Create;
begin
  mapaCirculo := TStringList.Create;
end;

destructor TFabricaFormaGeometrica.Destroy;
begin
  FreeAndNil(mapaCirculo);

  inherited;
end;

function TFabricaFormaGeometrica.PegarCirculo(psCor: string): IFormaGeometrica;
var
  circulo: TCirculo;
begin
  circulo := (TCirculo)mapaCirculo.Values[psCor];
end;

end.
