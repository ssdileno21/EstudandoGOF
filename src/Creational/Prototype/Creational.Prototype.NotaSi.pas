unit Creational.Prototype.NotaSi;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaSi = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TNotaSi }

procedure TNotaSi.Desenha;
begin
  Write('Si ');
end;

end.
