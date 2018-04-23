unit uLivro;

interface

type
  TLivro = class
  private
    introducao: string;
    indice: string;
    prefacio: string;
    capitulos: string;
    glossario: string;
  public
    function getIntroducao: string;
    procedure setIntroducao(psIntroducao: string);
    function getIndice: string;
    procedure setIndice(psIndice: string);
    function getPrefacio: string;
    procedure setPrefacio(psPrefacio: string);
    function getCapitulos: string;
    procedure setCapitulos(psCapitulos: string);
    function getGlossario: string;
    procedure setGlossario(psGlossario: string);
  end;

implementation

{ TLivro }

function TLivro.getCapitulos: string;
begin
  Result := capitulos;
end;

function TLivro.getGlossario: string;
begin
  Result := glossario;
end;

function TLivro.getIndice: string;
begin
  Result := indice;
end;

function TLivro.getIntroducao: string;
begin
  Result := introducao;
end;

function TLivro.getPrefacio: string;
begin
  Result := prefacio;
end;

procedure TLivro.setCapitulos(psCapitulos: string);
begin
  capitulos := psCapitulos;
end;

procedure TLivro.setGlossario(psGlossario: string);
begin
  glossario := psGlossario;
end;

procedure TLivro.setIndice(psIndice: string);
begin
  indice := psIndice;
end;

procedure TLivro.setIntroducao(psIntroducao: string);
begin
  introducao := psIntroducao;
end;

procedure TLivro.setPrefacio(psPrefacio: string);
begin
  prefacio :=  psPrefacio;
end;

end.
