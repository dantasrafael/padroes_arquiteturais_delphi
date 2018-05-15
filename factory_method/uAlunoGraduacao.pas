unit uAlunoGraduacao;

interface

uses
  uAluno;

type
  TAlunoGraduacao = class(TAluno)
  public
    constructor Create(psNome: string; pnTeste, pnProva: Double);
    function PegarMedia: Double; override;
  end;

implementation

{ TAlunoGraduacao }

constructor TAlunoGraduacao.Create(psNome: string; pnTeste, pnProva: Double);
begin
  inherited Create(psNome, pnTeste, pnProva);
end;

function TAlunoGraduacao.PegarMedia: Double;
begin
  Result := (pTeste + pProva)/2;
end;

end.
