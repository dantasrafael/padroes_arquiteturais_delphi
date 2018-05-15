unit uFabricaAluno;

interface

uses
  uAluno,
  uAlunoGraduacao,
  uAlunoPosGraduacao;

type
  TCurso = (CURSO_GRADUACAO, CURSO_POSGRADUACAO);

  TFabricaAluno = class
  public
    function PegarPessoa(poCurso: TCurso; psNome: string; pnTeste, pnProva: Double): TAluno;
  end;

implementation

{ TFabricaAluno }

function TFabricaAluno.PegarPessoa(poCurso: TCurso; psNome: string; pnTeste,
  pnProva: Double): TAluno;
begin
  case poCurso of
    CURSO_GRADUACAO: Result := TAlunoGraduacao.Create(psNome, pnTeste, pnProva);
    CURSO_POSGRADUACAO: Result := TAlunoPosGraduacao.Create(psNome, pnTeste, pnProva);
  else
    result := nil;
  end;
end;

end.
