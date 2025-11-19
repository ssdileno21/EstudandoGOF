inherited frmFlyweight: TfrmFlyweight
  Caption = 'Testar Flyweight'
  ClientHeight = 777
  ClientWidth = 575
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 591
  ExplicitHeight = 816
  TextHeight = 15
  inherited mInformacao: TMemo
    Top = 584
    Width = 569
    Height = 190
    Lines.Strings = (
      'A tela "Flyweight" demonstra o padr'#227'o Flyweight (GoF).'
      ''
      
        'TFigura '#233' o flyweight base, definindo a opera'#231#227'o para desenhar u' +
        'ma figura.'
      
        'TLinha e TOval s'#227'o flyweights concretos que sabem desenhar linha' +
        ' e oval.'
      
        'A classe TFiguraFactory mant'#233'm um cache de figuras e garante que' +
        ' apenas uma'
      'inst'#226'ncia de cada tipo (linha, oval) seja criada e reutilizada.'
      ''
      
        'O bot'#227'o "Desenhar figuras (Flyweight)" cria v'#225'rios desenhos alea' +
        't'#243'rios na '#225'rea'
      
        'gr'#225'fica reutilizando sempre os mesmos objetos TLinha/TOval retor' +
        'nados pelo factory.'
      
        'O memLog mostra qual inst'#226'ncia (Pointer) foi usada em cada desen' +
        'ho e quantos'
      
        'flyweights '#250'nicos existem em cache, ilustrando o ganho ao compar' +
        'tilhar objetos.')
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 3
    ExplicitTop = 584
    ExplicitWidth = 569
    ExplicitHeight = 190
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 569
    Height = 34
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 489
    object btnDesenhar: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 480
      Height = 26
      Align = alClient
      Caption = 'Desenhar'
      TabOrder = 0
      OnClick = btnDesenharClick
      ExplicitTop = 8
      ExplicitWidth = 400
      ExplicitHeight = 33
    end
    object btnLimpar: TButton
      AlignWithMargins = True
      Left = 490
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = btnLimparClick
      ExplicitLeft = 232
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 256
    Top = 43
    Width = 316
    Height = 535
    Align = alRight
    TabOrder = 2
    ExplicitHeight = 447
    object memLog: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 308
      Height = 527
      Align = alClient
      TabOrder = 0
      ExplicitTop = 192
      ExplicitWidth = 481
      ExplicitHeight = 220
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 247
    Height = 535
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 253
    ExplicitHeight = 511
    object imgArea: TImage
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 239
      Height = 527
      Align = alClient
      Proportional = True
      Stretch = True
      ExplicitTop = 0
      ExplicitWidth = 878
      ExplicitHeight = 158
    end
  end
end
