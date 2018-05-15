unit uAluno;

interface

type
  TAluno = class
  private
    nome: string;
    teste: Double;
    prova: Double;
  public
    constructor Create(psNome: string; pnTeste, pnProva: Double);
    function PegarMedia: Double; virtual; abstract;
    property pNome: string read nome write nome;
    property pTeste: Double read teste write teste;
    property pProva: Double read prova write prova;
  end;

implementation

{ TAluno }

constructor TAluno.Create(psNome: string; pnTeste, pnProva: Double);
begin
  nome := psNome;
  teste := pnTeste;
  prova := pnProva;
end;

end.
