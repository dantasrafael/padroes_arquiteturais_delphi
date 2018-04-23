unit uCarteiraMotorista_D;

interface

type
  TCarteiraMotorista_D = class
  private
    categoria: string;
  public
    constructor Create;
    function getCategoria: string;
    procedure setCategoria(psCategoria: string);
  end;

implementation

{ TCateiraMotorista_D }

constructor TCarteiraMotorista_D.Create;
begin
  categoria := 'Caminhão - Ônibus';
end;

function TCarteiraMotorista_D.getCategoria: string;
begin
  Result := categoria;
end;

procedure TCarteiraMotorista_D.setCategoria(psCategoria: string);
begin
  categoria := psCategoria;
end;

end.
