unit Creational.Builder.Hamburguer;

interface

uses
  Creational.Builder.Sanduiche, System.SysUtils;

  type
    THamburguer = class(TSanduiche)
      private
        FPontoDaCarne: string;
        FTemBacon: Boolean;
      public
        property PontoDaCarne: string read FPontoDaCarne write FPontoDaCarne;
        property TemBacon: Boolean read FTemBacon write FTemBacon;

        function ResumoPedido: string; override;
    end;

implementation

{ THamburguer }

function THamburguer.ResumoPedido: string;
begin
  Result :=
    'HAMBÚRGUER (' + Tamanho + '): ' + Recheio + sLineBreak +
    'Pão: ' + Pao + sLineBreak +
    'Ponto da carne: ' + PontoDaCarne + sLineBreak +
    'Bacon: ' + BoolToStr(TemBacon, True) + sLineBreak +
    'Molho: ' + Molho + sLineBreak +
    'Fechado: ' + BoolToStr(Fechado, True) + sLineBreak +
    'Preço: R$ ' + FormatFloat('0.00', Preco);
end;

end.
