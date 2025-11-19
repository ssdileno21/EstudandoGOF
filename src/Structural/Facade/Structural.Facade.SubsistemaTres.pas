unit Structural.Facade.SubsistemaTres;

interface

uses
  System.Classes;

  type
    TSubsistemaTres = class
    public
      procedure MetodoTres(ALog: TStrings);
  end;

implementation

{ TSubsistemaTres }

procedure TSubsistemaTres.MetodoTres(ALog: TStrings);
begin
  if Assigned(ALog) then
    ALog.Add('método do subsistema três.');
end;

end.
