{

  É uma fábrica concreta.

  Decide qual classe de passagem criar.

  O retorno é sempre TPassagem, que é o tipo abstrato.

  Mas a implementação decide qual classe concreta é criada.

  Isso é o coração do Factory Method.

  Quem chama não precisa saber “new TPassagemOnibusUrbano”.

  Ele só pede pra empresa: “me emite uma passagem”.

}


unit Creational.FactoryMethod.EmpresaOnibusInterestadual;

interface

uses
  System.SysUtils,
  Creational.FactoryMethod.Empresa,
  Creational.FactoryMethod.Passagem,
  Creational.FactoryMethod.PassagemOnibusInterestadual;

  type
    TEmpresaOnibusInterestadual = class(TEmpresa)
    public
      function EmitirPassagem(
        const AORigem, ADestino: string;
        const ADataHoraPartida: TDateTime
      ): TPassagem; override;

    end;

implementation

{ TEmpresaOnibusInterestadual }

function TEmpresaOnibusInterestadual.EmitirPassagem(const AORigem,
  ADestino: string; const ADataHoraPartida: TDateTime): TPassagem;
begin
  Result := TPassagemOnibusInterestadual.Create(
    AORigem,
    ADestino,
    ADataHoraPartida
  );

end;

end.
