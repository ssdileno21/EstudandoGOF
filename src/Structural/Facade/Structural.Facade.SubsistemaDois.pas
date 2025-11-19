unit Structural.Facade.SubsistemaDois;

interface

uses
  System.Classes;

type
  TSubsistemaDois = class
  public
    procedure MetodoDois(ALog: TStrings);
  end;

implementation

{ TSubsistemaDois }

procedure TSubsistemaDois.MetodoDois(ALog: TStrings);
begin
  if Assigned(ALog) then
    ALog.Add('método do subsistema dois.');
end;

end.
