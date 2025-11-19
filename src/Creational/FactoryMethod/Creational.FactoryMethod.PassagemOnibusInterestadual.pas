{

É um produtos concreto.

Herda de TPassagem e implementa ExibeDetalhes do seu jeito.

}


unit Creational.FactoryMethod.PassagemOnibusInterestadual;

interface

uses
  System.SysUtils,
  Vcl.Dialogs,
 Creational.FactoryMethod.Passagem;

  type
    TPassagemOnibusInterestadual = class(TPassagem)

    public
      procedure ExibeDetalhes; override;
    end;

implementation

{ TPassagemOnibusInterestadual }

procedure TPassagemOnibusInterestadual.ExibeDetalhes;
var
  LMsg: string;
begin
  LMsg :=
    'Passagem de Ônibus Interestadual' + sLineBreak +
    'Origem: ' + Origem + sLineBreak +
    'Destino: ' + Destino + sLineBreak +
    'Data/Hora de Partida: ' +
      FormatDateTime(FDateFormat, DataHoraPartida);

  ShowMessage(LMsg);

end;

end.
