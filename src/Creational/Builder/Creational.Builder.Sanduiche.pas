unit Creational.Builder.Sanduiche;

interface

uses
  System.SysUtils;

  type
    TSanduiche = class
      protected
        FPao: string;
        FRecheio: string;
        FFechado: Boolean;
        FTamanho: string;
        FMolho: string;
        FPreco: Currency;
      public
        property Pao: string read FPao write FPao;
        property Recheio: string read FRecheio write FRecheio;
        property Fechado: Boolean read FFechado write FFechado;

        property Tamanho: string read FTamanho write FTamanho;
        property Molho: string read FMolho write FMolho;
        property Preco: Currency read FPreco write FPreco;

        function ResumoPedido: string; virtual;
    end;

implementation

{ TSanduiche }


{ TSanduiche }

function TSanduiche.ResumoPedido: string;
begin
  Result :=
    'Sanduíche (' + Tamanho + '): ' + Recheio + sLineBreak +
    'Pão: ' + Pao + sLineBreak +
    'Molho: ' + Molho + sLineBreak +
    'Fechado: ' + BoolToStr(Fechado, True) + sLineBreak +
    'Preço: ' + FormatFloat('0.00', Preco);
end;

end.
