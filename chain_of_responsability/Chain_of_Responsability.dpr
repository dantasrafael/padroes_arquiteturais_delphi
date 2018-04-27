program Chain_of_Responsability;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uCadeiaDeResponsabilidade in 'uCadeiaDeResponsabilidade.pas',
  uClasse1 in 'uClasse1.pas',
  uClasse2 in 'uClasse2.pas',
  uClasse3 in 'uClasse3.pas';

function criarCadeiaDeResponsabilidade: TCadeiaDeResponsabilidade;
var
  cadeia1, cadeia2, cadeia3: TCadeiaDeResponsabilidade;
begin
  cadeia1 := TClasse1.Create(uCadeiaDeResponsabilidade.tres);
  cadeia2 := TClasse2.Create(uCadeiaDeResponsabilidade.dois);
  cadeia3 := TClasse3.Create(uCadeiaDeResponsabilidade.um);

  cadeia1.setProxima(cadeia2);
  cadeia2.setProxima(cadeia3);
  result := cadeia1;
end;

var
  cadeia: TCadeiaDeResponsabilidade;
begin
  try
    cadeia := criarCadeiaDeResponsabilidade;
		cadeia.setMensagem('N�vel 3', uCadeiaDeResponsabilidade.tres);
		cadeia.setMensagem('N�vel 2', uCadeiaDeResponsabilidade.dois);
		cadeia.setMensagem('N�vel 1', uCadeiaDeResponsabilidade.um);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
