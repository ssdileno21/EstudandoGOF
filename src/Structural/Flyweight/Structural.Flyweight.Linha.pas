unit Structural.Flyweight.Linha;

interface

uses
  Vcl.Graphics,
  Structural.Flyweight.Figura;

  type
    TLinha = class(TFigura)
    public
      procedure Desenhar(ACanvas: TCanvas;
        const AX, AY, ALargura, AAltura: Integer;
        ACor: TColor); override;
  end;

implementation

{ TLinha }

procedure TLinha.Desenhar(ACanvas: TCanvas; const AX, AY, ALargura,
  AAltura: Integer; ACor: TColor);
begin
  ACanvas.Pen.Color := ACor;
  ACanvas.MoveTo(AX, AY);
  ACanvas.LineTo(AX + ALargura, AY + AAltura);
end;

end.
