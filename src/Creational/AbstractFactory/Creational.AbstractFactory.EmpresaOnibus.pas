unit Creational.AbstractFactory.EmpresaOnibus;

interface

uses
  System.SysUtils,
  System.Classes,
  Creational.AbstractFactory.PassagemOnibusUrbano,
  Creational.AbstractFactory.PassagemOnibusInterestadual;

  type
    TEmpresaOnibus = class abstract

    public
      function EmitirPassagemOnibusUrbano(
        const AOrigem, ADestino: string;
        const ADataHoraPartida: TDatetime
      ): TPassagemOnibusUrbano; virtual; abstract;

      function EmitirPassagemOnibusInterestadual(
        const AOrigem, ADestino: string;
        const ADataHoraPartida: TDateTime
      ): TPassagemOnibusInterestadual; virtual; abstract;

    end;


implementation

end.
