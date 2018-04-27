unit uLampada;

interface

uses
  System.SysUtils;

type
  TLampada = class
  private
    ligada: Boolean;
  public
    procedure ligar;
    procedure desligar;
    procedure exibirStatus;
  end;

implementation

{ TLampada }

procedure TLampada.desligar;
begin
  ligada := False;
  exibirStatus;
end;

procedure TLampada.exibirStatus;
begin
  if (ligada) then
    Writeln('A lâmpada está ligada')
  else
    Writeln('A lâmpada está desligada');
end;

procedure TLampada.ligar;
begin
  ligada := True;
  exibirStatus;
end;

end.
