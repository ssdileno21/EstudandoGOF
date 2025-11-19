unit View.SingletonTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSingletonTest = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSingletonTest: TfrmSingletonTest;

implementation

{$R *.dfm}

uses Singleton.Janela;

procedure TfrmSingletonTest.FormCreate(Sender: TObject);
var
  LJanela: TJanela;
begin
  LJanela := TJanela.GetInstance;

  Self.Width := LJanela.Largura;
  Self.Height := LJanela.Altura;
end;

end.
