unit uCadeiaDeResponsabilidade;

interface

const
  um = 1;
  dois = 2;
  tres 3;

type
  TCadeiaDeResponsabilidade = class
  protected
    limite: Integer;
    proximo: TCadeiaDeResponsabilidade;
  public
    procedure setProxima(poCadeia: TCadeiaDeResponsabilidade);
    procedure setMensagem(psMensagem: string; pnPrioridade: Integer);
    procedure escrever(psMensagem: string); virtual; abstract;
  end;

implementation

{ TCadeiaDeResponsabilidade }

procedure TCadeiaDeResponsabilidade.setMensagem(psMensagem: string; pnPrioridade: Integer);
begin
  //dasdasdas
end;

procedure TCadeiaDeResponsabilidade.setProxima(poCadeia: TCadeiaDeResponsabilidade);
begin
  proximo := poCadeia;
end;

end.