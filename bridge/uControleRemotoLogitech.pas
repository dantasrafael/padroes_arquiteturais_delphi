unit uControleRemotoLogitech;

interface

uses
  uControleRemotoAbstrato, uTelevisaoAbstrata;

type
  TControleRemotoLogitech = class(TControleRemotoAbstrato)
  private
    { Private declarations }
  public
    constructor Create(poTv: TTelevisaoAbstrata);
    procedure SelecionarCanal(pnCanal: Integer);
  end;

implementation

{ TControleRemotoLogitech }

constructor TControleRemotoLogitech.Create(poTv: TTelevisaoAbstrata);
begin
  inherited Create(poTv);
end;

procedure TControleRemotoLogitech.SelecionarCanal(pnCanal: Integer);
begin
  configurarCanal(pnCanal);
end;

end.
