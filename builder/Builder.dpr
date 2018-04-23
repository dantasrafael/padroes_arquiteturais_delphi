program Builder;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uLivroBuilder in 'uLivroBuilder.pas',
  uLivro in 'uLivro.pas',
  uGrafica in 'uGrafica.pas',
  uLivroFiccaoBuilder in 'uLivroFiccaoBuilder.pas',
  uLivroTecnicoBuilder in 'uLivroTecnicoBuilder.pas';

var
  livroTecnicoBuilder: ILivroBuilder;
  livroTecnicoWriter: TGrafica;
  livroTecnico: TLivro;
  livroFiccaoBuilder: ILivroBuilder;
  livroFiccaoWriter: TGrafica;
  livroFiccao: TLivro;
begin
  try
		Writeln('Gerando Livro T�cnico:');
		livroTecnicoBuilder := TLivroTecnicoBuilder.Create;
		livroTecnicoWriter := TGrafica.Create(livroTecnicoBuilder);
		livroTecnicoWriter.gerarLivro();
		livroTecnico := livroTecnicoWriter.getLivro();
		Writeln('Livro T�cnico gerado com sucesso.' + #13#10);

		Writeln('Gerando Livro de Fic��o:');
		livroFiccaoBuilder := TLivroFiccaoBuilder.Create;
		livroFiccaoWriter := TGrafica.Create(livroFiccaoBuilder);
		livroFiccaoWriter.gerarLivro();
		livroFiccao := livroFiccaoWriter.getLivro();
		Writeln('Livro de Fic��o gerado com sucesso.');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
