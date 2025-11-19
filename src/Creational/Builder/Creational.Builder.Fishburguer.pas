unit Creational.Builder.Fishburguer;

interface

uses
  Creational.Builder.Sanduiche, System.SysUtils;

  type
    TFishburguer = class(TSanduiche)
      private
        FTipoPeixe: string;
        FEmpanado: Boolean;
        FMolhoEspecial: string;
      public
        property TipoPeixe: string read FTipoPeixe write FTipoPeixe;
        property Empanado: Boolean read FEmpanado write FEmpanado;
        property MolhoEspecial: string read FMolhoEspecial write FMolhoEspecial;

        function ResumoPedido: string; override;
    end;


implementation

{ TFishburguer }

function TFishburguer.ResumoPedido: string;
begin
  Result :=
    'FISHBURGUER (' + Tamanho + '): ' + Recheio + sLineBreak +
    'Pão: ' + Pao + sLineBreak +
    'Peixe: ' + TipoPeixe + sLineBreak +
    'Empanado: ' + BoolToStr(Empanado, True) + sLineBreak +
    'Molho especial: ' + MolhoEspecial + sLineBreak +
    'Molho base: ' + Molho + sLineBreak +
    'Fechado: ' + BoolToStr(Fechado, True) + sLineBreak +
    'Preço: R$ ' + FormatFloat('0.00', Preco);
end;

end.
