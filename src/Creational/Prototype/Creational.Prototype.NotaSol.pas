unit Creational.Prototype.NotaSol;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaSol = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TNotaSol }

procedure TNotaSol.Desenha;
begin
  Write('Sol ');
end;

end.
