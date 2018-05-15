unit uHardDrive;

interface

uses
  System.SysUtils;

type
  THardDrive = class
  public
    procedure LerDados;
  end;

implementation

{ THardDrive }

procedure THardDrive.LerDados;
begin
  WriteLn('Lendo Dados.');
end;

end.
