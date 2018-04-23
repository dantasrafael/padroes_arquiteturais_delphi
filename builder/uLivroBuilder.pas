unit uLivroBuilder;

interface

uses
  uLivro;

type
  ILivroBuilder = interface
    procedure buildIndice;
    procedure buildPrefacio;
    procedure buildIntroducao;
    procedure buildCapitulos;
    procedure buildGlossario;
    function getLivro: TLivro;
  end;

implementation

end.
