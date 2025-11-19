inherited frmComposite: TfrmComposite
  Caption = 'Testar Composite'
  ClientHeight = 485
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitHeight = 524
  TextHeight = 15
  inherited mInformacao: TMemo
    Top = 272
    Height = 210
    Lines.Strings = (
      'A tela "Composite" demonstra o padr'#227'o Composite (GoF).'
      ''
      'TEmpregado '#233' o componente base, definindo a interface comum da'
      'hierarquia (nome, sal'#225'rio e o m'#233'todo Print, al'#233'm de Add/Remove).'
      
        'TProgramador '#233' um Leaf: representa um funcion'#225'rio sem subordinad' +
        'os'
      'e n'#227'o permite Add/Remove.'
      
        'TGerente '#233' o Composite: mant'#233'm uma lista de TEmpregado e delega ' +
        'o'
      'Print para seus subordinados, formando uma estrutura em '#225'rvore.'
      ''
      'Ao clicar em "Montar Estrutura", a tela cria uma hierarquia de'
      
        'gerentes e programadores (com Jo'#227'o como raiz) e exibe o resultad' +
        'o'
      'no memo com recuos, mostrando como o Composite permite tratar'
      'objetos individuais e composi'#231#245'es de maneira uniforme.')
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 3
    ExplicitTop = 272
    ExplicitHeight = 210
  end
  object memLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 41
    Width = 447
    Height = 225
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -2
    ExplicitTop = 151
    ExplicitHeight = 155
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 447
    Height = 32
    Align = alTop
    TabOrder = 2
    object btnMontarEstrutura: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 358
      Height = 24
      Align = alClient
      Caption = 'Montar Estrutura'
      TabOrder = 0
      OnClick = btnMontarEstruturaClick
      ExplicitLeft = 22
      ExplicitTop = 19
      ExplicitWidth = 139
      ExplicitHeight = 25
    end
    object btnLimpar: TButton
      AlignWithMargins = True
      Left = 368
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = btnLimparClick
      ExplicitTop = 8
    end
  end
end
