unit TagEditor_Un;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TTagForm = class(TForm)
    TitleImage: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    Name_Edit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Ver_Edit: TEdit;
    Label12: TLabel;
    Copy_Edit: TEdit;
    Label5: TLabel;
    Created_Edit: TEdit;
    Label6: TLabel;
    Com_Edit: TEdit;
    Label7: TLabel;
    Other_Edit: TEdit;
    Label8: TLabel;
    Comment_Memo: TMemo;
    Label4: TLabel;
    Button1: TButton;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WmNcHitTest (var Msg: TWmNcHitTest);
      message wm_NcHitTest;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  TagForm: TTagForm;

implementation

{$R *.DFM}

procedure TTagForm.WmNcHitTest(var Msg: TWmNcHitTest);
var
  Pt: TPoint;
begin
  Pt := Point (Msg.XPos, Msg.YPos);
  Pt := ScreenToClient (Pt);
  if PtInRect (Rect(titleImage.Left,titleImage.Top,titleImage.Width+titleImage.Left,titleImage.Height+titleImage.Top), pt) then
    Msg.Result := htCaption
  else

    inherited;
end;

procedure TTagForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := WS_THICKFRAME or WS_POPUP or WS_BORDER;
end;

procedure TTagForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 resize :=false;
end;

procedure TTagForm.Button1Click(Sender: TObject);
begin
 TagForm.Close;
end;

procedure TTagForm.FormCreate(Sender: TObject);
begin
  Animate1.FIleName:= GetCurrentDir + '\1.avi';
  Animate1.Active:= True;
end;

end.
