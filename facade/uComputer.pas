unit uComputer;

interface

uses
  uCPU,
  uMemory,
  uHardDrive;

type
  TComputer = class
  private
    cpu: TCPU;
    memory: TMemory;
    hardDrive: THardDrive;
  public
    constructor Create;
    procedure Executar;
  end;

implementation

{ TComputer }

constructor TComputer.Create;
begin
  cpu := TCPU.Create;
  memory := TMemory.Create;
  hardDrive := THardDrive.Create;
end;

procedure TComputer.Executar;
begin
  hardDrive.LerDados;
  memory.CarregarDados;
  cpu.ProcessarDados;
end;

end.
