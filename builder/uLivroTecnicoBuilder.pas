unit uLivroTecnicoBuilder;

interface

uses
  System.SysUtils, uLivroBuilder, uLivro;

type
  TLivroTecnicoBuilder = class(TInterfacedObject, ILivroBuilder)
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

{ TLivroTecnicoBuilder }

procedure TLivroTecnicoBuilder.buildCapitulos;
begin
  Writeln('Montando cap�tulos');
  livro.setIndice('Cap�tulos livro t�cnico');
end;

procedure TLivroTecnicoBuilder.buildGlossario;
begin
  Writeln('Montando gloss�rio');
  livro.setIndice('Gloss�rio livro t�cnico');
end;

procedure TLivroTecnicoBuilder.buildIndice;
begin
  Writeln('Montando �ndice');
  livro.setIndice('�ndice livro t�cnico');
end;

procedure TLivroTecnicoBuilder.buildIntroducao;
begin
  Writeln('Montando introdu��o');
  livro.setIndice('Introdu��o livro t�cnico');
end;

procedure TLivroTecnicoBuilder.buildPrefacio;
begin
  Writeln('Montando pref�cio');
  livro.setIndice('Pref�cio livro t�cnico');
end;

constructor TLivroTecnicoBuilder.Create;
begin
  livro := TLivro.Create;
end;

function TLivroTecnicoBuilder.getLivro: TLivro;
begin
  Result := livro;
end;

end.
