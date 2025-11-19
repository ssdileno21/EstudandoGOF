unit Creational.Prototype.NotaMusical;

interface

  type
    TNotaMusical = class
      function Clone: TNotaMusical; virtual;
      procedure Desenha; virtual; abstract;
    end;

implementation

type
  TNotaMusicalClass = class of TNotaMusical;

{ TNotaMusical }

function TNotaMusical.Clone: TNotaMusical;
begin
  Result := TNotaMusicalClass(ClassType).Create;
end;

end.
