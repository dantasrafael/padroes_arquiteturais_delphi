unit uFabricaLG;

interface

uses
  uCelularSmartphone, uCelularBasico, uFabricaCelular, uLgG4, uLgDM110;

type
  TFabricaLG = class(TInterfacedObject, IFabricaCelular)
  private
    { Private declarations }
  public
    function criarCelularBasico: ICelularBasico;
    function criarCelularSmartphone: ICelularSmartphone;
  end;

implementation

{ TFabricaLG }

function TFabricaLG.criarCelularBasico: ICelularBasico;
begin
  result := TLgDM110.Create;
end;

function TFabricaLG.criarCelularSmartphone: ICelularSmartphone;
begin
  result := TLgG4.Create;
end;

end.
