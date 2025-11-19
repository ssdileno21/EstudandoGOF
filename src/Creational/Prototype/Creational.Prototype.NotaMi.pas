unit Creational.Prototype.NotaMi;

interface

uses
  Creational.Prototype.NotaMusical;

  type
    TNotaMi = class(TNotaMusical)
      public
        procedure Desenha; override;
    end;

implementation

{ TMi }

procedure TNotaMi.Desenha;
begin
  Write('Mi ');
end;

end.
