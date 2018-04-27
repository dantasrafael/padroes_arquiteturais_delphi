unit uClasse1;

interface

uses
  System.SysUtils, uCadeiaDeResponsabilidade;

type
  TClasse1 = class(TCadeiaDeResponsabilidade)
  public
    constructor Create(pnLimite: Integer);
    procedure escrever(psMensagem: string); override;
  end;

implementation

{ TClasse1 }

constructor TClasse1.Create(pnLimite: Integer);
begin
  limite := pnLimite;
end;

procedure TClasse1.escrever(psMensagem: string);
begin
  Writeln('Classe 1: ' + psMensagem);
end;

end.
