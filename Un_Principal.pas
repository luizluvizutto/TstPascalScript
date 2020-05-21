unit Un_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynEditHighlighter,
  SynEditCodeFolding, SynHighlighterPas, Vcl.StdCtrls, FireDAC.UI.Intf,
  FireDAC.VCLUI.Async, FireDAC.Stan.Intf, FireDAC.Comp.UI, SynEditOptionsDialog,
  SynEditMiscClasses, SynEditSearch, System.Actions, Vcl.ActnList, uPSComponent;

type
  TFrmPrincipal = class(TForm)
    MemoScript: TSynEdit;
    btExecutar: TButton;
    SynPasSyn1: TSynPasSyn;
    btSalvar: TButton;
    ActionList1: TActionList;
    ActSalvar: TAction;
    Scripter: TPSScript;
    ActExecutar: TAction;
    procedure btSalvarClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
    procedure ScripterCompile(Sender: TPSScript);
    procedure btExecutarClick(Sender: TObject);
  private
    { Private declarations }
    function arquivo: String;
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.ActExecutarExecute(Sender: TObject);
begin
   btExecutar.Click;
end;

procedure TFrmPrincipal.ActSalvarExecute(Sender: TObject);
begin
   btSalvar.Click;
end;

function TFrmPrincipal.arquivo: String;
begin
   Result := ExtractFilePath( Application.ExeName ) + 'script.pas';
end;

procedure TFrmPrincipal.btExecutarClick(Sender: TObject);
begin
   Scripter.Script.Text := MemoScript.Lines.Text;
   if Scripter.compile then begin
      Scripter.execute;
   end else begin
      showmessage(Scripter.CompilerErrorToStr(0));
   end;
end;

procedure TFrmPrincipal.btSalvarClick(Sender: TObject);
begin
   MemoScript.Lines.SaveToFile( arquivo );
   MemoScript.MarkModifiedLinesAsSaved;
end;

constructor TFrmPrincipal.Create(AOwner: TComponent);
begin
   inherited;
   SynPasSyn1.StringAttri.Foreground  := clMaroon;
   SynPasSyn1.CommentAttri.Foreground := clGrayText;
   SynPasSyn1.KeyAttri.Foreground     := clBlue;
   SynPasSyn1.NumberAttri.Foreground  := clGreen;
   SynPasSyn1.FloatAttri.Foreground   := clGreen;

   if FileExists( arquivo ) then begin
      MemoScript.Lines.LoadFromFile( arquivo );
   end else begin
      MemoScript.Lines.Add( 'begin');
      MemoScript.Lines.Add( '');
      MemoScript.Lines.Add( 'end.');
   end;

end;

procedure TFrmPrincipal.ScripterCompile(Sender: TPSScript);
begin
   sender.AddFunction(@ExtractFileExt, 'function ExtractFileExt(const FileName: string): string;');
   sender.AddFunction(@ExtractFileName,'function ExtractFileName(const FileName: string): string;');
   sender.AddFunction(@ShowMessage,    'procedure ShowMessage(const Msg: string);');
end;

end.
