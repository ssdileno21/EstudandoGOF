unit Structural.Decorator.PiscaPisca;

interface

uses
  Structural.Decorator.Decoracao,
  Structural.Decorator.Arvore;

  type
  TPiscaPisca = class(TDecoracao)
  public
    function Mostrar: string; override;
  end;

implementation

{ TPiscaPisca }

function TPiscaPisca.Mostrar: string;
begin
  Result := inherited Mostrar + sLineBreak + '- Pisca-pisca';
end;

end.
