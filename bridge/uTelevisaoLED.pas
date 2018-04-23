unit uTelevisaoLED;

interface

uses
  System.SysUtils, uTelevisaoAbstrata;

type
  TTelevisaoLED = class(TTelevisaoAbstrata)
  private
    { Private declarations }
  public
    procedure ligar; override;
    procedure desligar; override;
  end;

implementation

{ TTelevisaoLED }

procedure TTelevisaoLED.desligar;
begin
  inherited;

  Writeln('Televis�o LED Desligada');
end;

procedure TTelevisaoLED.ligar;
begin
  inherited;

  Writeln('Televis�o LED Ligada');
end;

end.
