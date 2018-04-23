unit uCarteiraMotorista_B;

interface

type
  TCarteiraMotorista_B = class
  private
    categoria: string;
  public
    constructor Create;
    function getCategoria: string;
    procedure setCategoria(psCategoria: string);
  end;


implementation

{ TCateiraMotorista_B }

constructor TCarteiraMotorista_B.Create;
begin
  categoria := 'Carro Passeio';
end;

function TCarteiraMotorista_B.getCategoria: string;
begin
  Result := categoria;
end;

procedure TCarteiraMotorista_B.setCategoria(psCategoria: string);
begin
  categoria := psCategoria;
end;

end.
