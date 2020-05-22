program TestePascalScript;

uses
  Vcl.Forms,
  Un_Principal in 'Un_Principal.pas' {FrmPrincipal},
  Un_Evento in 'Un_Evento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
