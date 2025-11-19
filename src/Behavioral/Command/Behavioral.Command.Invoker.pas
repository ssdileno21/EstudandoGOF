unit Behavioral.Command.Invoker;

interface

uses
  System.Generics.Collections,
  Behavioral.Command.Command;

type
  TInvoker = class
  private
    FPilha: TObjectList<TCommand>; // histórico (stack)
  public
    constructor Create;
    destructor Destroy; override;

    procedure Compute(ACommand: TCommand);
    procedure Undo(ALevels: Integer = 1);
    function  Count: Integer;
  end;

implementation

{ TInvoker }


{ TInvoker }

procedure TInvoker.Compute(ACommand: TCommand);
begin
  if ACommand = nil then Exit;
  ACommand.Execute;
  FPilha.Add(ACommand);
end;

function TInvoker.Count: Integer;
begin
  Result := FPilha.Count;
end;

constructor TInvoker.Create;
begin
  inherited;
  FPilha := TObjectList<TCommand>.Create(True); // owns objects
end;

destructor TInvoker.Destroy;
begin
  FPilha.Free;
  inherited;
end;

procedure TInvoker.Undo(ALevels: Integer);
var
  I: Integer;
  Cmd: TCommand;
begin
  for I := 1 to ALevels do
  begin
    if FPilha.Count = 0 then Exit;

    Cmd := FPilha.Last;
    FPilha.Extract(Cmd);     // remove SEM liberar
    try
      Cmd.Undo;              // desfaz usando o próprio comando
    finally
      Cmd.Free;              // agora libera
    end;
  end;
end;

end.
