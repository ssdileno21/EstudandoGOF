unit Structural.Decorator.Estrela;

interface

uses
  Structural.Decorator.Decoracao,
  Structural.Decorator.Arvore;

  type
    TEstrela = class(TDecoracao)
    public
      function Mostrar: string; override;
  end;

implementation

{ TEstrela }

function TEstrela.Mostrar: string;
begin
  Result := inherited Mostrar + sLineBreak + '- Estrela no topo';
end;

end.
