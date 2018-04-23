unit uLivroFiccaoBuilder;

interface

uses
  System.SysUtils, uLivroBuilder, uLivro;

type
  TLivroFiccaoBuilder = class(TInterfacedObject, ILivroBuilder)
  private
    livro: TLivro;
  public
    constructor Create;
    procedure buildIndice;
    procedure buildPrefacio;
    procedure buildIntroducao;
    procedure buildCapitulos;
    procedure buildGlossario;
    function getLivro: TLivro;
  end;

implementation

{ TLivroFiccaoBuilder }

procedure TLivroFiccaoBuilder.buildCapitulos;
begin
  Writeln('Montando cap�tulos');
  livro.setIndice('Cap�tulos livro fic��o');
end;

procedure TLivroFiccaoBuilder.buildGlossario;
begin
  Writeln('Montando gloss�rio');
  livro.setIndice('Gloss�rio livro fic��o');
end;

procedure TLivroFiccaoBuilder.buildIndice;
begin
  Writeln('Montando �ndice');
  livro.setIndice('�ndice livro fic��o');
end;

procedure TLivroFiccaoBuilder.buildIntroducao;
begin
  Writeln('Montando introdu��o');
  livro.setIndice('Introdu��o livro fic��o');
end;

procedure TLivroFiccaoBuilder.buildPrefacio;
begin
  Writeln('Montando pref�cio');
  livro.setIndice('Pref�cio livro fic��o');
end;

constructor TLivroFiccaoBuilder.Create;
begin
  livro := TLivro.Create;
end;

function TLivroFiccaoBuilder.getLivro: TLivro;
begin
  Result := livro;
end;

end.
