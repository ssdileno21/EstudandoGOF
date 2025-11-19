unit Creational.Prototype.NotaRe;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaRe = class(TNotaMusical)
      procedure Desenha; override;
    end;

implementation

{ TRe }

procedure TNotaRe.Desenha;
begin
  Write('Re ');
end;

end.
