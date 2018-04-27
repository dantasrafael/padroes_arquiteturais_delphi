unit uInterruptor;

interface

uses
  uComando;

type
  TInterruptor = class
  private
    comando: IComando;
  public
    procedure setComando(poComando: IComando);
    procedure pressionarInterruptor;
  end;

implementation

{ TInterruptor }

procedure TInterruptor.pressionarInterruptor;
begin
  comando.executar;
end;

procedure TInterruptor.setComando(poComando: IComando);
begin
  comando := poComando;
end;

end.
