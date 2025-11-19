unit Structural.Decorator.Decoracao;

interface

uses
  Structural.Decorator.Arvore;

  type
    TDecoracao = class abstract(TArvore)
    private
      FArvore: TArvore;
    public
      constructor Create(AArvore: TArvore);
      destructor Destroy; override;

      function Mostrar: string; override;
  end;

implementation

{ TDecoracao }

constructor TDecoracao.Create(AArvore: TArvore);
begin
  inherited Create;
  FArvore := AArvore;
end;

destructor TDecoracao.Destroy;
begin
  FArvore.Free;
  inherited;
end;

function TDecoracao.Mostrar: string;
begin
  if Assigned(FArvore) then
    Result := FArvore.Mostrar
  else
    Result := '';
end;

end.
