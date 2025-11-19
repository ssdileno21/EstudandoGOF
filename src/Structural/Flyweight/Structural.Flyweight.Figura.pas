unit Structural.Flyweight.Figura;

interface

uses
  Vcl.Graphics;

type
  TFigura = class abstract
  public
    // estado extrínseco: posição, tamanho e cor
    procedure Desenhar(ACanvas: TCanvas;
      const AX, AY, ALargura, AAltura: Integer;
      ACor: TColor); virtual; abstract;
  end;

implementation

end.
