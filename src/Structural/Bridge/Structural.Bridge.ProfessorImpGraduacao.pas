unit Structural.Bridge.ProfessorImpGraduacao;

interface

uses
  Structural.Bridge.Implementador;

  type
    TProfessorImpGraduacao = class(TImplementador)
      public
        procedure OpImpl; override;
    end;

implementation

{ TProfessorImpGraduacao }

uses
  Vcl.Dialogs;

procedure TProfessorImpGraduacao.OpImpl;
begin
  ShowMessage('Implementando Prof. Graduação'+#13#10'Tchau');
end;

end.
