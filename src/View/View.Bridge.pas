unit View.Bridge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmBridge = class(TfrmDefault)
    GroupBox1: TGroupBox;
    rgImplementacao: TRadioGroup;
    rgProfessor: TRadioGroup;
    Panel1: TPanel;
    btnExecutar: TButton;
    Panel2: TPanel;
    memLog: TMemo;
    btnLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecutarBridge;
  public
    { Public declarations }
  end;

var
  frmBridge: TfrmBridge;

implementation

{$R *.dfm}

uses Structural.Bridge.Implementador, Structural.Bridge.Professor,
  Structural.Bridge.ProfessorGraduacao, Structural.Bridge.ProfessorImpGraduacao,
  Structural.Bridge.ProfessorPosGraduacao,
  Structural.Bridge.ProfessorImpPosGraduacao;

{ TfrmBridge }

procedure TfrmBridge.btnExecutarClick(Sender: TObject);
begin
  inherited;
  ExecutarBridge;
end;

procedure TfrmBridge.btnLimparClick(Sender: TObject);
begin
  inherited;
  memLog.Clear;
  rgProfessor.ItemIndex := 0;
  rgImplementacao.ItemIndex := 0;
end;

procedure TfrmBridge.ExecutarBridge;
var
  LImp: TImplementador;
  LProf: TProfessor;
  LDescProf, LDescImp: string;
begin
  memLog.Lines.Add('--------------------------------------------');
  memLog.Lines.Add('1) Lendo opções selecionadas na tela...');

  // 1. Escolhe a implementação
  case rgImplementacao.ItemIndex of
    0:
      begin
        LImp := TProfessorImpGraduacao.Create;
        LDescImp := 'Implementãção Graduação';
      end;
    1:
      begin
        LImp := TProfessorImplPosGraduacao.Create;
        LDescImp := 'Implementação Pós-Graduação';
      end;
  else
    ShowMessage('Selecione uma implementação.');
    Exit;
  end;

  memLog.Lines.Add(Format('   -> Implementação criada: %s (%s)',
    [LDescImp, LImp.ClassName]));

  case rgProfessor.ItemIndex of
    0:
      begin
        LProf := TProfessorGraduacao.Create(LImp);
        LDescProf := 'Professor Graduação';
      end;
    1:
      begin
        LProf := TProfessorPosGraduacao.Create(LImp);  // <-- usar LImp
        LDescProf := 'Professor Pós-Graduação';
      end;
    else
      FreeAndNil(LImp);
      ShowMessage('Selecione um tipo de professor');
      Exit;
  end;


    memLog.Lines.Add(Format('   -> Abstração criada: %s (%s)',
      [LDescProf, LProf.ClassName]));
    memLog.Lines.Add('');
    memLog.Lines.Add('2) A abstração recebe a implementação via construtor:');
    memLog.Lines.Add('     TProfessor.Create(AImp: TImplementador)');
    memLog.Lines.Add('');
    memLog.Lines.Add('3) A tela chama LProf.Op; o professor delega para');
    memLog.Lines.Add('     FImp.OpImpl (lado da implementação).');
    memLog.Lines.Add('     A mensagem de ShowMessage a seguir vem da classe');
    memLog.Lines.Add('     de implementação concreta selecionada.');
    memLog.Lines.Add('');

    // 3) Aqui a “ponte” acontece de verdade
    LProf.Op;

    memLog.Lines.Add('');
    memLog.Lines.Add('4) Execução concluída. Abstração escolhida: ' + LDescProf);
    memLog.Lines.Add('   Implementação escolhida: ' + LDescImp);
    memLog.Lines.Add('');

    FreeAndNil(LProf); // o Professor destrói o Implementador internamente

end;

procedure TfrmBridge.FormCreate(Sender: TObject);
begin
  inherited;

  //RadioGroup de Professor
  rgProfessor.Caption := 'Tipo de Professor (Abstração)';
  rgProfessor.Items.Clear;
  rgProfessor.Items.Add('Professor Graduação');
  rgProfessor.Items.Add('Professor Pós-Graduação');
  rgProfessor.ItemIndex := 0;

  //RadioGroup de Implementador
  rgImplementacao.Caption := 'Implementação (Implementador)';
  rgImplementacao.Items.Clear;
  rgImplementacao.Items.Add('Imp. Graduação');
  rgImplementacao.Items.Add('Imp. Pós-Graduação');
  rgImplementacao.ItemIndex := 0;

end;

end.
