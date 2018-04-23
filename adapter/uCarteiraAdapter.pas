unit uCarteiraAdapter;

interface

uses
  uCarteiraMotorista_B, uCarteiraMotorista_D;

type
  TCarteiraAdapter = class(TCarteiraMotorista_B)
  private
    carteiraD: TCarteiraMotorista_D;
  public
    constructor Create(poCarteiraD: TCarteiraMotorista_D);
    function getCategoria: string;
    procedure setCategoria(psCategoria: string);
  end;


implementation

{ TCateiraAdapter }

constructor TCarteiraAdapter.Create(poCarteiraD: TCarteiraMotorista_D);
begin
  carteiraD := poCarteiraD;
end;

function TCarteiraAdapter.getCategoria: string;
begin
  Result := carteiraD.getCategoria;
end;

procedure TCarteiraAdapter.setCategoria(psCategoria: string);
begin
  carteiraD.setCategoria(psCategoria + ' - ' + carteiraD.getCategoria);
end;

end.
