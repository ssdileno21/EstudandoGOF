unit Structural.Proxy.RealImage;

interface

uses
  System.SysUtils,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Structural.Proxy.ImagemBase;

  type
    TRealImage = class(TImagemBase)
    private
      FNomeArquivo: string;
      FTarget: TImage;
      procedure CarregarDoDisco;
    public
      constructor Create(const ANomeArquivo: string; ATarget: TImage);
      procedure Exibir; override;
   end;


implementation

{ TRealImage }

procedure TRealImage.CarregarDoDisco;
begin
  if FTarget = nil then
    Exit;

  if not FileExists(FNomeArquivo) then
  begin
    ShowMessage('Arquivo de imagem não encontrado: ' + FNomeArquivo);
    Exit;
  end;

  // aqui é o "carregar do disco" de verdade
  FTarget.Picture.LoadFromFile(FNomeArquivo);
  ShowMessage('Carregando imagem do disco: ' + FNomeArquivo);
end;

constructor TRealImage.Create(const ANomeArquivo: string; ATarget: TImage);
begin
  inherited Create;
  FNomeArquivo := ANomeArquivo;
  FTarget := ATarget;
  CarregarDoDisco;
end;

procedure TRealImage.Exibir;
begin
  // aqui, em um exemplo real, poderia apenas desenhar a imagem já carregada
  // como estamos usando TImage, ela já está no Picture
  if (FTarget <> nil) and FileExists(FNomeArquivo) then
    ShowMessage('Exibindo imagem: ' + FNomeArquivo);
end;

end.
