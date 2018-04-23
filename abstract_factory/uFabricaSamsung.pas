unit uFabricaSamsung;

interface

uses
  uCelularSmartphone, uCelularBasico, uFabricaCelular, uSamsungGalaxy, uSamsungE1270;

type
  TFabricaSamsung = class(TInterfacedObject, IFabricaCelular)
  private
    { Private declarations }
  public
    function criarCelularBasico: ICelularBasico;
    function criarCelularSmartphone: ICelularSmartphone;
  end;

implementation

{ TFabricaSamsung }

function TFabricaSamsung.criarCelularBasico: ICelularBasico;
begin
  Result := TSamsungE1270.Create;
end;

function TFabricaSamsung.criarCelularSmartphone: ICelularSmartphone;
begin
  Result := TSamsungGalaxy.Create;
end;

end.
