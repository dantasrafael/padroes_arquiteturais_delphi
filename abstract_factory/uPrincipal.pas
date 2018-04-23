unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAbstractFactory = class(TForm)
    btnResultado: TButton;
    lblTexto: TLabel;
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbstractFactory: TfrmAbstractFactory;

implementation

uses
  uFabricaCelular, uCelularSmartphone, uCelularBasico, uFabricaSamsung, uFabricaLG;

{$R *.dfm}

procedure TfrmAbstractFactory.btnResultadoClick(Sender: TObject);
var
  oFabricaDeCelular: IFabricaCelular;
  oCelularSmartphone: ICelularSmartphone;
  oCelularBasico: ICelularBasico;
  sResultado: string;
begin
  oFabricaDeCelular := TFabricaSamsung.Create;
  oCelularSmartphone := oFabricaDeCelular.criarCelularSmartphone;
  oCelularBasico := oFabricaDeCelular.criarCelularBasico;
  sResultado := oCelularSmartphone.getDadosSmartphone + #13#10 +
    oCelularBasico.getDadosCelularBasico;

  sResultado := sResultado + #13#10 + #13#10;

  oFabricaDeCelular := TFabricaLG.Create;
  oCelularSmartphone := oFabricaDeCelular.criarCelularSmartphone;
  oCelularBasico := oFabricaDeCelular.criarCelularBasico;
  sResultado := sResultado + oCelularSmartphone.getDadosSmartphone +
    #13#10 + oCelularBasico.getDadosCelularBasico;

  Showmessage(sResultado);
end;

end.
