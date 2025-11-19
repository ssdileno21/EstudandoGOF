unit Structural.Proxy.ProxyImage;

interface

uses
  Vcl.ExtCtrls,
  Structural.Proxy.ImagemBase,
  Structural.Proxy.RealImage;

  type
    TProxyImage = class(TImagemBase)
    private
      FNomeArquivo: string;
      FTarget: TImage;
      FRealImage: TRealImage;
    public
      constructor Create(const ANomeArquivo: string; ATarget: TImage);
      destructor Destroy; override;

      procedure Exibir; override;
  end;


implementation

{ TProxyImage }

constructor TProxyImage.Create(const ANomeArquivo: string; ATarget: TImage);
begin
  inherited Create;
  FNomeArquivo := ANomeArquivo;
  FRealImage := nil;
  FTarget := ATarget;
end;

destructor TProxyImage.Destroy;
begin
  FRealImage.Free;
  inherited;
end;

procedure TProxyImage.Exibir;
begin
  // Lazy loading: só cria a imagem real na primeira chamada
  if FRealImage = nil then
    FRealImage := TRealImage.Create(FNomeArquivo, FTarget);

  // Depois disso, só delega
  FRealImage.Exibir;
end;

end.
