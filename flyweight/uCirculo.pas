unit uCirculo;

interface

uses
  System.SysUtils,
  uFormaGeometrica;

type
  TCirculo = class(TInterfacedObject, IFormaGeometrica)
  private
    cor: string;
    x: Integer;
    y: Integer;
    radianos: Integer;
  public
    constructor Create(psCor: string);
    procedure Desenhar;
    property pCor: string  read cor write cor;
    property pX: Integer  read x write x;
    property pY: Integer  read x write x;
    property pRadianos: Integer  read Radianos write Radianos;
  end;

implementation

{ TCirculo }

constructor TCirculo.Create(psCor: string);
begin
  cor := psCor;
end;

procedure TCirculo.Desenhar;
begin
  Writeln('Circulo: Desenhando() [Cor:' + cor +
    ', x:' + x + ', y:' + y + ', Radianos:' + radianos + ']');
end;

end.
