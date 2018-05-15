unit uCPU;

interface

uses
  System.SysUtils;

type
  TCPU = class
  public
    procedure ProcessarDados;
  end;

implementation

{ TCPU }

procedure TCPU.ProcessarDados;
begin
  WriteLn('Processando Dados.');
end;

end.
