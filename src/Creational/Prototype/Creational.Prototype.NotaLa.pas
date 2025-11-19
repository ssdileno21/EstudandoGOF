unit Creational.Prototype.NotaLa;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaLa = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TNotaLa }

procedure TNotaLa.Desenha;
begin
  Write('La ');
end;

end.
