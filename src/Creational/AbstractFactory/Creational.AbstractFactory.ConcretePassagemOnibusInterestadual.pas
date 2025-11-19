unit Creational.AbstractFactory.ConcretePassagemOnibusInterestadual;

interface

uses
  System.SysUtils,
  Vcl.Dialogs,
  Creational.AbstractFactory.PassagemOnibusInterestadual;

  type
    TConcretePassagemOnibusInterestadual = class(TPassagemOnibusInterestadual)
      public
        procedure ExibeDetalhes; override;
    end;

implementation

{ TConcretePassagemOnibusInterestadual }

procedure TConcretePassagemOnibusInterestadual.ExibeDetalhes;
var
  LMsg: string;
begin
  LMsg :=
    'Passagem de ônibus interestadual: ' +
    Origem + ' para ' + Destino +
    ', Data/Hora: ' +
    FormatDateTime(FDateFormat, DataHoraPartida);

    ShowMessage(LMsg);
end;

end.
