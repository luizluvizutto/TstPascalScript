unit Un_Evento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynEditHighlighter,
  SynEditCodeFolding, SynHighlighterPas, Vcl.StdCtrls, FireDAC.UI.Intf,
  FireDAC.VCLUI.Async, FireDAC.Stan.Intf, FireDAC.Comp.UI, SynEditOptionsDialog,
  SynEditMiscClasses, SynEditSearch, System.Actions, Vcl.ActnList, uPSComponent;

type

  TEvento  = procedure( txt: String ) of object;
  TEvento2 = function( S: TStringList ): Integer of object;

  TClassEvento = class( TComponent )
  private
     FEvento: TEvento;
     FEvento2: TEvento2;
  public
     property Evento:  TEvento  read FEvento  write FEvento;
     property Evento2: TEvento2 read FEvento2 write FEvento2;
     procedure Executar;
  end;


implementation

{ TClassEvento }

procedure TClassEvento.Executar;
var S: TStringList;
begin
   ShowMessage( 'Cliquei no Executar' );
   if Assigned(FEvento) then begin
      FEvento( 'Olá Mundo' );
   end;

   if Assigned(FEvento2) then begin

      S := TStringList.Create;
      try
         ShowMessage(
         IntToStr( FEvento2( S ) ) );
      finally
         S.Free;
      end;

   end;

end;

end.
