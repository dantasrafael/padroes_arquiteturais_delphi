unit uGrafica;

interface

uses
  uLivroBuilder, uLivro;

type
  TGrafica = class
  private
    livroBuilder: ILivroBuilder;
  public
    constructor Create(poLivroBuilder: ILivroBuilder);
    function getLivro: TLivro;
    procedure gerarLivro;
  end;

implementation

{ TGrafica }

constructor TGrafica.Create(poLivroBuilder: ILivroBuilder);
begin
  livroBuilder := poLivroBuilder;
end;

procedure TGrafica.gerarLivro;
begin
  livroBuilder.buildIndice;
  livroBuilder.buildPrefacio;
  livroBuilder.buildIntroducao;
  livroBuilder.buildCapitulos;
  livroBuilder.buildGlossario;
end;

function TGrafica.getLivro: TLivro;
begin
  Result := livroBuilder.getLivro;
end;

end.
