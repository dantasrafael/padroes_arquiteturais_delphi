program Factory_Method;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uAluno in 'uAluno.pas',
  uFabricaAluno in 'uFabricaAluno.pas',
  uAlunoGraduacao in 'uAlunoGraduacao.pas',
  uAlunoPosGraduacao in 'uAlunoPosGraduacao.pas';

var
  fabricaAluno: TFabricaAluno;
  aluno: TAluno;
begin
  try
    fabricaAluno := TFabricaAluno.Create;
    aluno := fabricaAluno.PegarPessoa(CURSO_GRADUACAO, 'Fulano de tal', 10, 9);
    WriteLn('Nome: ' + aluno.pNome);
    WriteLn('Média: ' + FloatToStr(aluno.PegarMedia));
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
