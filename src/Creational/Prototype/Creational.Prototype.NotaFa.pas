unit Creational.Prototype.NotaFa;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaFa = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TNotaFa }

procedure TNotaFa.Desenha;
begin
  Write('Fa ');
end;

end.
