unit Creational.AbstractFactory.PassagemOnibusUrbano;

interface

uses
  System.SysUtils;

  type
    TPassagemOnibusUrbano = class abstract
      private
        FOrigem: string;
        FDestino: string;
        FDataHoraPartida: TDateTime;
      protected
        FDateFormat: string;
      public
        constructor Create(
          const AOrigem, ADestino: string;
          const ADataHoraPartida: TDateTime
        ); virtual;

      property Origem: string read FOrigem write FOrigem;
      property Destino: string read FDestino write FDestino;
      property DataHoraPartida: TDatetime read FDataHoraPartida write FDataHoraPartida;

      procedure ExibeDetalhes; virtual; abstract;

    end;


implementation

{ TPassagemOnibusUrbano }

constructor TPassagemOnibusUrbano.Create(const AOrigem, ADestino: string;
  const ADataHoraPartida: TDateTime);
begin
  inherited Create;
  FOrigem := AOrigem;
  FDestino := ADestino;
  FDataHoraPartida := ADataHoraPartida;

  FDateFormat := 'dd/MM/yyyy HH:mm';
end;

end.
