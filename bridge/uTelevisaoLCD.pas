unit uTelevisaoLCD;

interface

uses
  System.SysUtils, uTelevisaoAbstrata;

type
  TTelevisaoLCD = class(TTelevisaoAbstrata)
  private
    { Private declarations }
  public
    procedure ligar; override;
    procedure desligar; override;
  end;

implementation

{ TTelevisaoLCD }

procedure TTelevisaoLCD.desligar;
begin
  inherited;

  Writeln('Televis�o LCD Desligada');
end;

procedure TTelevisaoLCD.ligar;
begin
  inherited;

  Writeln('Televis�o LCD Ligada');
end;

end.
