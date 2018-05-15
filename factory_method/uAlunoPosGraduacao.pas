unit uAlunoPosGraduacao;

interface

uses
  uAluno;

type
  TAlunoPosGraduacao = class(TAluno)
  public
    constructor Create(psNome: string; pnTeste, pnProva: Double);
    function PegarMedia: Double; override;
  end;

implementation

{ TAlunoPosGraduacao }

constructor TAlunoPosGraduacao.Create(psNome: string; pnTeste, pnProva: Double);
begin
  inherited Create(psNome, pnTeste, pnProva);
end;

function TAlunoPosGraduacao.PegarMedia: Double;
begin
  Result := (pTeste + (pProva * 2))/3;
end;

end.
