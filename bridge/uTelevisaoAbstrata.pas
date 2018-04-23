unit uTelevisaoAbstrata;

interface

type
  TTelevisaoAbstrata = class
  private
    canal: Integer;
  public
    procedure ligar; virtual; abstract;
    procedure desligar; virtual; abstract;
    function getCanal: Integer;
    procedure setCanal(pnCanal: Integer);
  end;

implementation

{ TTelevisaoAbstrata }

function TTelevisaoAbstrata.getCanal: Integer;
begin
  Result := canal;
end;

procedure TTelevisaoAbstrata.setCanal(pnCanal: Integer);
begin
  canal := pnCanal;
end;

end.
