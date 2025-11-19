unit Structural.Bridge.Professor;

interface

uses
  Structural.Bridge.Implementador;

  type
    TProfessor = class abstract
      protected
        FImp: TImplementador;
      public
        constructor Create(AImp: TImplementador); virtual;
        destructor Destroy; override;

        procedure Op; virtual; abstract;
    end;

implementation

{ TProfessor }

constructor TProfessor.Create(AImp: TImplementador);
begin
  inherited Create;
  FImp := AImp;
end;

destructor TProfessor.Destroy;
begin
  FImp.Free;
  inherited;
end;

end.
