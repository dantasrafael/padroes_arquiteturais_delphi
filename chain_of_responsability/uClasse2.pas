unit uClasse2;

interface

uses
  System.SysUtils, uCadeiaDeResponsabilidade;

type
  TClasse2 = class(TCadeiaDeResponsabilidade)
  public
    constructor Create(pnLimite: Integer);
    procedure escrever(psMensagem: string); override;
  end;

implementation

{ TClasse2 }

constructor TClasse2.Create(pnLimite: Integer);
begin
  limite := pnLimite;
end;

procedure TClasse2.escrever(psMensagem: string);
begin
  Writeln('Classe 2: ' + psMensagem);
end;

end.
