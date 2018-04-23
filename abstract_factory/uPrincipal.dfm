object frmAbstractFactory: TfrmAbstractFactory
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Abstract Factory'
  ClientHeight = 147
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 0
    Top = 0
    Width = 645
    Height = 91
    Align = alTop
    Caption = 
      ' Objetivo: Prover uma interface para criar fam'#237'lias de objetos r' +
      'elacionados ou dependentes sem especificar suas classes concreta' +
      's.'#13#10#13#10' Deve-se aplic'#225'-lo quando:'#13#10' '#8226' Um sistema for independente' +
      ' de como seus produtos s'#227'o criados, compostos e representados;'#13#10 +
      ' '#8226' Um sistema for configurado com uma entre v'#225'rias fam'#237'lias de p' +
      'rodutos;'#13#10' '#8226' Uma fam'#237'lia de produtos relacionados for projetada ' +
      'para uso conjunto e voc'#234' for implementar essa restri'#231#227'o;'#13#10' '#8226' Qui' +
      'ser fornecer uma biblioteca de classes e revelar sua interface e' +
      ' n'#227'o sua implementa'#231#227'o.'
    ExplicitWidth = 629
  end
  object btnResultado: TButton
    Left = 256
    Top = 107
    Width = 103
    Height = 25
    Caption = 'Ver Resultado'
    TabOrder = 0
    OnClick = btnResultadoClick
  end
end
