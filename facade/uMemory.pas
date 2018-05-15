unit uMemory;

interface

uses
  System.SysUtils;

type
  TMemory = class
  public
    procedure CarregarDados;
  end;

implementation

{ TMemory }

procedure TMemory.CarregarDados;
begin
  WriteLn('Carregando Dados.');
end;

end.
