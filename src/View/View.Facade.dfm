inherited frmFacade: TfrmFacade
  Caption = 'Testar Facade'
  ClientHeight = 751
  ClientWidth = 487
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 503
  ExplicitHeight = 790
  TextHeight = 15
  inherited mInformacao: TMemo
    Top = 496
    Width = 481
    Height = 252
    Lines.Strings = (
      'A tela "Facade" demonstra o padr'#227'o Facade (GoF).'
      ''
      
        'TSubsistemaUm, TSubsistemaDois e TSubsistemaTres representam par' +
        'tes internas de um '
      'sistema mais complexo.'
      
        'TFacade encapsula esses subsistemas e exp'#245'e opera'#231#245'es de alto n'#237 +
        'vel (por exemplo, '
      'MetodoA) para o cliente.'
      ''
      
        'O bot'#227'o "Opera'#231#227'o A - sem Facade" mostra, no memo, como o client' +
        'e precisaria '
      'instanciar e chamar diretamente cada subsistema.'
      
        'O bot'#227'o "Opera'#231#227'o B - com Facade" mostra que o mesmo comportamen' +
        'to '#233' obtido '
      'com '
      
        'uma '#250'nica chamada '#224' TFacade, reduzindo o acoplamento e escondend' +
        'o os detalhes '
      'internos dos subsistemas.')
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 3
    ExplicitTop = 496
    ExplicitWidth = 481
    ExplicitHeight = 252
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 481
    Height = 447
    Align = alClient
    TabOrder = 1
    object memLog: TMemo
      Left = 1
      Top = 1
      Width = 479
      Height = 445
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 481
    Height = 34
    Align = alTop
    TabOrder = 2
    object btnMetodoA: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 189
      Height = 26
      Align = alLeft
      Caption = 'Opera'#231#227'o A - sem Facade'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnMetodoAClick
    end
    object btnMetodoB: TButton
      AlignWithMargins = True
      Left = 199
      Top = 4
      Width = 197
      Height = 26
      Align = alClient
      Caption = 'Opera'#231#227'o B - com Facade'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = btnMetodoBClick
    end
    object btnLimpar: TButton
      AlignWithMargins = True
      Left = 402
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnLimparClick
    end
  end
end
