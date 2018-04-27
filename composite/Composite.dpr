program Composite;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uInterfaceComponente in 'uInterfaceComponente.pas',
  uComponente in 'uComponente.pas',
  uContainerComponente in 'uContainerComponente.pas';

var
  componenteUnitario1: TComponente;
  componenteUnitario2: TComponente;
  componenteUnitario3: TComponente;
  componenteUnitario4: TComponente;
  componenteUnitario5: TComponente;
  container1: TContainerComponente;
  container2: TContainerComponente;
begin
  try
    componenteUnitario1 := TComponente.Create('Componente Unitário 1');
    componenteUnitario2 := TComponente.Create('Componente Unitário 2');
    componenteUnitario3 := TComponente.Create('Componente Unitário 3');
    componenteUnitario4 := TComponente.Create('Componente Unitário 4');
    componenteUnitario5 := TComponente.Create('Componente Unitário 5');
    container1 := TContainerComponente.Create;
    container1.incluir(componenteUnitario1);
    container1.incluir(componenteUnitario2);
    container2 := TContainerComponente.Create;
    container2.incluir(componenteUnitario3);
    container2.incluir(componenteUnitario4);
    container2.incluir(componenteUnitario5);

    container1.incluir(container2);
    container1.exibir;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
