unit Structural.Facade.SubsistemaUm;

interface

uses
  System.Classes;

  type
    TSubsistemaUm = class
    public
      procedure MetodoUm(ALog: TStrings);
  end;

implementation

{ TSubsistemaUm }

procedure TSubsistemaUm.MetodoUm(ALog: TStrings);
begin
  if Assigned(ALog) then
    ALog.Add('método do subsistema um.');
end;

end.
