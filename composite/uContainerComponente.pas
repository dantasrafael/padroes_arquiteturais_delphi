unit uContainerComponente;

interface

uses
  System.SysUtils,
  uInterfaceComponente;

type
  TContainerComponente = class(TInterfacedObject, IInterfaceComponente)
  private
    listaComponentes: array of IInterfaceComponente;
    contador: Integer;
  public
    constructor Create;
    procedure incluir(poComponent: IInterfaceComponente);
    procedure exibir;
  end;

implementation

{ TContainerComponente }

constructor TContainerComponente.Create;
begin
  contador := 0;
end;

procedure TContainerComponente.exibir;
var
  i: Integer;
begin
  for i := 0 to Contador -1 do
    listaComponentes[i].exibir;
end;

procedure TContainerComponente.incluir(poComponent: IInterfaceComponente);
begin
  SetLength(listaComponentes, contador + 1);
  listaComponentes[contador] := poComponent;
  contador := contador + 1;
end;

end.
