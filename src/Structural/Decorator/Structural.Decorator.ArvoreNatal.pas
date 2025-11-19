unit Structural.Decorator.ArvoreNatal;

interface

uses
  Structural.Decorator.Arvore;

  type
    TArvoreNatal = class(TArvore)
    public
      function Mostrar: string; override;
  end;

implementation

{ TArvoreNatal }

function TArvoreNatal.Mostrar: string;
begin
  Result := 'Árvore de Natal';
end;

end.
