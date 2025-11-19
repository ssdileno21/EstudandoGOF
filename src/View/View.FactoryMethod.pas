unit View.FactoryMethod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXPickers;

type
  TfrmFactoryMethod = class(TfrmDefault)
    GroupBox1: TGroupBox;
    cbxOrigem: TComboBox;
    rgTipoPassagem: TRadioGroup;
    Label1: TLabel;
    cbxDestino: TComboBox;
    Label2: TLabel;
    btnEmitirPassagem: TButton;
    dpDataPartida: TDatePicker;
    Label3: TLabel;
    tpHoraPartida: TTimePicker;
    Label4: TLabel;
    procedure btnEmitirPassagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFactoryMethod: TfrmFactoryMethod;

implementation

{$R *.dfm}

uses Creational.FactoryMethod.Empresa, Creational.FactoryMethod.Passagem,
  Creational.FactoryMethod.EmpresaOnibusInterestadual,
  Creational.FactoryMethod.EmpresaOnibusUrbano, System.DateUtils;

{ TfrmDefault1 }



procedure TfrmFactoryMethod.btnEmitirPassagemClick(Sender: TObject);
var
  LTipoPassagem: Integer;
  LDataHora: TDateTime;

  LViacaoABCLocal: TEmpresa;
  LViacaoXYZInter: TEmpresa;
  // Exemplo de polimorfismo, utilizando a mesma varável base: TEmpresa
  LUrbano: TPassagem;
  LInterestadual: TPassagem;
begin
  inherited;
  if (cbxOrigem.Text = EmptyStr) then
    Exit;

  if (cbxDestino.Text = EmptyStr) then
    Exit;

  if (cbxOrigem.Text = cbxDestino.Text) then
    Exit;

  LTipoPassagem := rgTipoPassagem.ItemIndex;

  LDataHora := Trunc(dpDataPartida.Date) + Frac(tpHoraPartida.Time);

  if LTipoPassagem = 0 then
  begin
      // Criando a empresa de ônibus urbano...
      LViacaoABCLocal := TEmpresaOnibusUrbano.Create;
      try
        // Pedindo a empresa 'Urbano' emitir a passagem...
        LUrbano := LViacaoABCLocal.EmitirPassagem(
          cbxOrigem.Text,
          cbxDestino.Text,
          LDataHora
        );
        LUrbano.ExibeDetalhes;
      finally
        FreeAndNil(LViacaoABCLocal);
      end;
  end else
  begin
      // Criando a empresa de ônibus interestadual...
      LViacaoXYZInter := TEmpresaOnibusInterestadual.Create;
      try
        // Pedindo a empresa 'Interestadual' emitir a passagem...
        LInterestadual := LViacaoXYZInter.EmitirPassagem(
          cbxOrigem.Text,
          cbxDestino.Text,
          LDataHora
        );
        LInterestadual.ExibeDetalhes;
      finally
        FreeAndNil(LViacaoXYZInter);
      end;
  end;

  {
    Foi chamado o mesmo método 'ExibirDetalhes' e cada objeto
    responde de forma apropriada ao tipo dele.
  }
end;

end.
