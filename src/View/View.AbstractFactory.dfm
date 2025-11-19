inherited frmAbstractFactory: TfrmAbstractFactory
  Caption = 'Testar Abstract Factory'
  ClientHeight = 481
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 520
  TextHeight = 15
  inherited mInformacao: TMemo
    Top = 247
    Height = 231
    Lines.Strings = (
      
        'A tela "Abstract Factory" demonstra o padr'#227'o Abstract Factory (G' +
        'oF).'
      ''
      
        'TEmpresaOnibus '#233' a f'#225'brica abstrata que define como emitir passa' +
        'gens.'
      
        'TConcreteEmpresaOnibus '#233' a f'#225'brica concreta que cria dois tipos ' +
        'de produtos da '
      'mesma fam'#237'lia:'
      
        'TConcretePassagemOnibusUrbano e TConcretePassagemOnibusInteresta' +
        'dual.'
      ''
      
        'A tela n'#227'o cria as passagens diretamente. Ela pede para a f'#225'bric' +
        'a gerar a passagem '
      'urbana ou interestadual.'
      ''
      
        'Isso garante que os objetos criados s'#227'o consistentes entre si e ' +
        'mant'#233'm a l'#243'gica de '
      'cria'#231#227'o desacoplada da tela.')
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 3
    ExplicitTop = 247
    ExplicitHeight = 231
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 447
    Height = 238
    Align = alTop
    Caption = 'Emitir Passagem'
    TabOrder = 1
    ExplicitLeft = -2
    object Label1: TLabel
      Left = 16
      Top = 155
      Width = 95
      Height = 15
      Caption = 'Informe a origem:'
    end
    object Label2: TLabel
      Left = 232
      Top = 155
      Width = 97
      Height = 15
      Caption = 'Informe o destino:'
    end
    object Label3: TLabel
      Left = 16
      Top = 86
      Width = 83
      Height = 15
      Caption = 'Data da Partida:'
    end
    object Label4: TLabel
      Left = 232
      Top = 86
      Width = 85
      Height = 15
      Caption = 'Hora da Partida:'
    end
    object cbxOrigem: TComboBox
      Left = 16
      Top = 176
      Width = 200
      Height = 23
      TabOrder = 0
      Items.Strings = (
        ''
        'Belo Horizonte'
        'Pedro Leopoldo'
        'S'#227'o Paulo'
        'Rio de Janeiro')
    end
    object rgTipoPassagem: TRadioGroup
      Left = 16
      Top = 21
      Width = 426
      Height = 55
      Caption = 'Tipo da Passagem'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Urbano'
        'Interestadual')
      TabOrder = 1
    end
    object cbxDestino: TComboBox
      Left = 232
      Top = 176
      Width = 200
      Height = 23
      TabOrder = 2
      Items.Strings = (
        ''
        'Belo Horizonte'
        'Pedro Leopoldo'
        'S'#227'o Paulo'
        'Rio de Janeiro')
    end
    object btnEmitirPassagem: TButton
      AlignWithMargins = True
      Left = 5
      Top = 208
      Width = 437
      Height = 25
      Align = alBottom
      Caption = 'Emitir passagem'
      TabOrder = 3
      OnClick = btnEmitirPassagemClick
    end
    object dpDataPartida: TDatePicker
      Left = 16
      Top = 107
      Date = 45962.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 4
    end
    object tpHoraPartida: TTimePicker
      Left = 232
      Top = 104
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 5
      Time = 45962.953077754630000000
      TimeFormat = 'hh:nn'
    end
  end
end
