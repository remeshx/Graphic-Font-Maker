program GFont_Maker;

uses
  Forms,
  Main_Un in 'Main_Un.pas' {MainForm},
  DirUnit in 'Need\DirUnit.pas',
  Graphic_Font in 'Need\Graphic_Font.pas',
  TagEditor_Un in 'TagEditor_Un.pas' {TagForm},
  Preview_UN in 'Preview_UN.pas' {Per_Form},
  About_Un in 'About_Un.pas' {About_Fr},
  customScrollBar in '..\..\Component\CustomScrollBar\customScrollBar.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TTagForm, TagForm);
  Application.CreateForm(TPer_Form, Per_Form);
  Application.CreateForm(TAbout_Fr, About_Fr);
  Application.Run;
end.
