unit uFabricaCelular;

interface

uses
  uCelularSmartphone, uCelularBasico;

type
  IFabricaCelular = interface
    function criarCelularBasico: ICelularBasico;
    function criarCelularSmartphone: ICelularSmartphone;
  end;

implementation

end.
