unit Creational.AbstractFactory.ConcreteEmpresaOnibus;

interface

uses
  System.SysUtils,
  Creational.AbstractFactory.EmpresaOnibus,
  Creational.AbstractFactory.PassagemOnibusUrbano,
  Creational.AbstractFactory.PassagemOnibusInterestadual,
  Creational.AbstractFactory.ConcretePassagemOnibusUrbano,
  Creational.AbstractFactory.ConcretePassagemOnibusInterestadual;

  type
    TConcreteEmpresaOnibus = class(TEmpresaOnibus)
    public
      function EmitirPassagemOnibusUrbano(
        const AOrigem, ADestino: string;
        const ADataHoraPartida: TDateTime
      ): TPassagemOnibusUrbano; override;

      function EmitirPassagemOnibusInterestadual(
        const AOrigem, ADestino: string;
        const ADataHoraPartida: TDateTime
      ): TPassagemOnibusInterestadual; override;
    end;


implementation

{ TConcreteEmpresaOnibus }

function TConcreteEmpresaOnibus.EmitirPassagemOnibusInterestadual(const AOrigem,
  ADestino: string;
  const ADataHoraPartida: TDateTime): TPassagemOnibusInterestadual;
begin
  Result := TConcretePassagemOnibusInterestadual.Create(
    AOrigem,
    ADestino,
    ADataHoraPartida
  );
end;

function TConcreteEmpresaOnibus.EmitirPassagemOnibusUrbano(const AOrigem,
  ADestino: string; const ADataHoraPartida: TDateTime): TPassagemOnibusUrbano;
begin
  Result := TConcretePassagemOnibusUrbano.Create(
    AOrigem,
    ADestino,
    ADataHoraPartida
  );
end;

end.
