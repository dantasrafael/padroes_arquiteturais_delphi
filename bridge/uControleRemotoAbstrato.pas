unit uControleRemotoAbstrato;

interface

uses
  uTelevisaoAbstrata;

type
  TControleRemotoAbstrato = class
  private
    tv: TTelevisaoAbstrata;
  public
    constructor Create(poTv: TTelevisaoAbstrata);
    procedure ligar;
    procedure desligar;
    procedure configurarCanal(pnCanal: Integer);
  end;

implementation

{ TControleRemotoAbstrato }

procedure TControleRemotoAbstrato.configurarCanal(pnCanal: Integer);
begin
  tv.setCanal(pnCanal);
end;

constructor TControleRemotoAbstrato.Create(poTv: TTelevisaoAbstrata);
begin
  tv := poTv;
end;

procedure TControleRemotoAbstrato.desligar;
begin
  tv.desligar;
end;

procedure TControleRemotoAbstrato.ligar;
begin
  tv.ligar;
end;

end.
