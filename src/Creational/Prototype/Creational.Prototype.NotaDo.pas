unit Creational.Prototype.NotaDo;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaDo = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TNotaDo }

procedure TNotaDo.Desenha;
begin
  Write('Do ');
end;

end.
