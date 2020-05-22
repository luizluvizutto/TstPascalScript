unit Un_Evento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynEditHighlighter,
  SynEditCodeFolding, SynHighlighterPas, Vcl.StdCtrls, FireDAC.UI.Intf,
  FireDAC.VCLUI.Async, FireDAC.Stan.Intf, FireDAC.Comp.UI, SynEditOptionsDialog,
  SynEditMiscClasses, SynEditSearch, System.Actions, Vcl.ActnList, uPSComponent;

type

  TEvento = procedure( txt: String );

  TClassEvento = class( TComponent )
  private
     FEvento: TEvento;
  public
     property Evento: TEvento read FEvento write FEvento;
     procedure Executar;
  end;


implementation

{ TClassEvento }

procedure TClassEvento.Executar;
begin
   ShowMessage( 'Cliquei no Executar' );
   if Assigned(FEvento) then begin
      FEvento( 'Olá Mundo' );
   end;
end;

end.
