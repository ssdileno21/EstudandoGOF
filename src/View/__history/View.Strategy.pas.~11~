unit View.Strategy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default, Vcl.StdCtrls,
  Behavioral.Strategy.Vetor, Behavioral.Strategy.AlgoritmoOrdenacao,
  Vcl.ExtCtrls, Behavioral.Strategy.Vetor, Behavioral.Strategy.AlgoritmoOrdenacao;

type
  TfrmStrategy = class(TfrmDefault)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtQtd: TEdit;
    cbAlg: TComboBox;
    btnGerar: TButton;
    btnOrdenar: TButton;
    memVetor: TMemo;
    Panel1: TPanel;
    memLog: TMemo;
    Panel2: TPanel;
    btnLimpar: TButton;
  private
    { Private declarations }
    FContexto: TVetor;
    function  CriarEstrategiaSelecionada: IAlgoritmoOrdenacao;
    procedure Log(const AValue: string);
  public
    { Public declarations }
  end;

var
  frmStrategy: TfrmStrategy;

implementation

{$R *.dfm}

{ TfrmStrategy }

function TfrmStrategy.CriarEstrategiaSelecionada: IAlgoritmoOrdenacao;
begin

end;

procedure TfrmStrategy.Log(const AValue: string);
begin

end;

end.
