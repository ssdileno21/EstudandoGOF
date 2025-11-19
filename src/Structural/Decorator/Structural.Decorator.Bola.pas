unit Structural.Decorator.Bola;

interface

uses
  Structural.Decorator.Decoracao,
  Structural.Decorator.Arvore;

  type
    TBola = class(TDecoracao)
    public
      function Mostrar: string; override;
  end;


implementation

{ TBola }

function TBola.Mostrar: string;
begin
  // chama a árvore "decorada" e acrescenta a nova decoração
  Result := inherited Mostrar + sLineBreak + '- Bolas de Natal';
end;

end.
