unit Structural.Flyweight.Oval;

interface

uses
  Vcl.Graphics,
  Structural.Flyweight.Figura;

  type
    TOval = class(TFigura)
    public
      procedure Desenhar(ACanvas: TCanvas;
        const AX, AY, ALargura, AAltura: Integer;
        ACor: TColor); override;
  end;

implementation

{ TOval }

procedure TOval.Desenhar(ACanvas: TCanvas; const AX, AY, ALargura,
  AAltura: Integer; ACor: TColor);
begin
  ACanvas.Pen.Color   := ACor;
  ACanvas.Brush.Style := bsClear; // só contorno
  ACanvas.Ellipse(AX, AY, AX + ALargura, AY + AAltura);
end;

end.
