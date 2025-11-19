unit View.Adapter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmAdapter = class(TfrmDefault)
    Panel1: TPanel;
    btnLimpar: TButton;
    btnConectar: TButton;
    memLog: TMemo;
    GroupBox2: TGroupBox;
    sbTomadaBR: TSpeedButton;
    sbTomadaUS: TSpeedButton;
    GroupBox3: TGroupBox;
    sbPlugBR: TSpeedButton;
    sbPlugUS: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecutarAdapter;
  public
    { Public declarations }
  end;

var
  frmAdapter: TfrmAdapter;

implementation

{$R *.dfm}

uses Structural.Adapter.AdapterEUAtoBrasil, Structural.Adapter.Plug,
  Structural.Adapter.PlugAmericano, Structural.Adapter.PlugBrasileiro,
  Structural.Adapter.Tomada, Structural.Adapter.TomadaAmericana,
  Structural.Adapter.TomadaBrasileira, Structural.Adapter.AdapterBrasilToEUA;

procedure TfrmAdapter.btnConectarClick(Sender: TObject);
begin
  inherited;
  ExecutarAdapter;
end;

procedure TfrmAdapter.btnLimparClick(Sender: TObject);
begin
  inherited;
  memLog.Clear;

  sbTomadaBR.Down := True;
  sbTomadaUS.Down := False;

  sbPlugBR.Down := True;
  sbPlugUS.Down := False;
end;

procedure TfrmAdapter.ExecutarAdapter;
var
  LPlug: TPlug;
  LTomada: TTomada;
  LMsg: string;
begin
  LPlug := nil;
  LTomada := nil;

  memLog.Lines.Add('--------------------------------------------');
  memLog.Lines.Add('Simulando conexão entre plug e tomada...');

  try
    { 1) Cria o plug selecionado }

    if sbPlugBR.Down then
    begin
      LPlug := TPlugBrasileiro.Create;
      memLog.Lines.Add(
        Format('Plug selecionado: Plug Brasileiro (classe %s)',
          [LPlug.ClassName]));
    end
    else
    if sbPlugUS.Down then
    begin
      LPlug := TPlugAmericano.Create;
      memLog.Lines.Add(
        Format('Plug selecionado: Plug Americano (classe %s)',
          [LPlug.ClassName]));
    end
    else
    begin
      memLog.Lines.Add('Nenhum plug selecionado.');
      Exit;
    end;

    { 2) Cria a tomada ou o adapter de acordo com a combinação }

    // TOMADA BRASILEIRA
    if sbTomadaBR.Down then
    begin
      if LPlug is TPlugAmericano then
      begin
        memLog.Lines.Add(
          'Tomada escolhida: Tomada Brasileira, mas o plug é americano.');
        memLog.Lines.Add(
          '-> Criando TAdapterEuaToBrasil para adaptar o plug EUA -> Brasil.');

        LTomada := TAdapterEuaToBrasil.Create;
      end
      else
      begin
        memLog.Lines.Add('Tomada escolhida: Tomada Brasileira.');
        LTomada := TTomadaBrasileira.Create;
      end;
    end
    // TOMADA AMERICANA
    else
    if sbTomadaUS.Down then
    begin
      if LPlug is TPlugBrasileiro then
      begin
        memLog.Lines.Add(
          'Tomada escolhida: Tomada Americana, mas o plug é brasileiro.');
        memLog.Lines.Add(
          '-> Criando TAdapterBrasilToEUA para adaptar o plug Brasil -> EUA.');

        LTomada := TAdapterBrasilToEUA.Create;
      end
      else
      begin
        memLog.Lines.Add('Tomada escolhida: Tomada Americana.');
        LTomada := TTomadaAmericana.Create;
      end;
    end
    else
    begin
      memLog.Lines.Add('Nenhuma tomada selecionada.');
      Exit;
    end;

    memLog.Lines.Add(
      Format('Objeto tomada criado: classe %s (vista como TTomada)',
        [LTomada.ClassName]));
    memLog.Lines.Add('');

    { 3) Explica se está usando Adapter ou não }

    if sbTomadaBR.Down and (LPlug is TPlugAmericano) then
      memLog.Lines.Add(
        'Situação: Plug Americano em Tomada Brasileira -> usa TAdapterEuaToBrasil.')
    else
    if sbTomadaUS.Down and (LPlug is TPlugBrasileiro) then
      memLog.Lines.Add(
        'Situação: Plug Brasileiro em Tomada Americana -> usa TAdapterBrasilToEUA.')
    else
      memLog.Lines.Add(
        'Situação: ligação direta (sem Adapter).');

    memLog.Lines.Add('');
    memLog.Lines.Add('Chamando LTomada.Conecta(LPlug);');
    memLog.Lines.Add(Format('  - LTomada: %s', [LTomada.ClassName]));
    memLog.Lines.Add(Format('  - LPlug:   %s', [LPlug.ClassName]));

    { 4) Conecta e mostra o resultado }

    LMsg := LTomada.Conecta(LPlug);
    memLog.Lines.Add('');
    memLog.Lines.Add('Resultado da conexão: ' + LMsg);

    ShowMessage(LMsg);

  finally
    LTomada.Free;
    LPlug.Free;
  end;
end;

procedure TfrmAdapter.FormCreate(Sender: TObject);
begin
  inherited;

  sbTomadaBR.GroupIndex := 1;
  sbTomadaUS.GroupIndex := 1;
  sbTomadaBR.AllowAllUp := False;
  sbTomadaUS.AllowAllUp := False;
  sbTomadaBR.Down := True;
  sbTomadaUS.Down := False;

  sbPlugBR.GroupIndex := 2;
  sbPlugUS.GroupIndex := 2;
  sbPlugBR.AllowAllUp := False;
  sbPlugUS.AllowAllUp := False;
  sbPlugBR.Down := True;
  sbPlugUS.Down := False;

  memLog.Clear;
end;

end.
