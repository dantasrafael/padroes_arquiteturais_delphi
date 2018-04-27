unit uClasse3;

interface

uses
  System.SysUtils, uCadeiaDeResponsabilidade;

type
  TClasse3 = class(TCadeiaDeResponsabilidade)
  public
    constructor Create(pnLimite: Integer);
    procedure escrever(psMensagem: string); override;
  end;

implementation

{ TClasse3 }

constructor TClasse3.Create(pnLimite: Integer);
begin
  limite := pnLimite;
end;

procedure TClasse3.escrever(psMensagem: string);
begin
  Writeln('Classe 3: ' + psMensagem);
end;

end.
