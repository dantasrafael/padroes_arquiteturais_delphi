unit uComponente;

interface

uses
  System.SysUtils,
  uInterfaceComponente;

type
  TComponente = class(TInterfacedObject, IInterfaceComponente)
  private
    nome: string;
  public
    constructor Create(psNome: string);
    procedure exibir;
  end;

implementation

{ TComponente }

constructor TComponente.Create(psNome: string);
begin
  nome := psNome;
end;

procedure TComponente.exibir;
begin
  Writeln(nome);
end;

end.
