unit UnitSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TFormSplash = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

uses UnitLogin;

procedure TFormSplash.Timer1Timer(Sender: TObject);
begin

ProgressBar1.Position:=ProgressBar1.Position +5;
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +3;
FormSplash.AlphaBlendValue:=190;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando.');
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +2;
FormSplash.AlphaBlendValue:=200;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando .');
Sleep(200);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=210;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando  .');
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=220;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando.');
Sleep(10);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=225;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando .');
Sleep(200);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=227;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando  .');
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=230;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando.');
Sleep(300);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=235;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando .');
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +10;
FormSplash.AlphaBlendValue:=240;
Memo1.Lines.Clear;
Memo1.Lines.Add('Carregando  .');
Sleep(100);

ProgressBar1.Position:=ProgressBar1.Position +45;
FormSplash.AlphaBlendValue:=250;
Memo1.Lines.Clear;
Memo1.Lines.Add('Inicializando.');
Sleep(3000);

ProgressBar1.Position:=ProgressBar1.Position +5;
FormSplash.AlphaBlendValue:=255;
Memo1.Lines.Clear;
Memo1.Lines.Add('Inicializando .');
Sleep(200);

Timer1.Enabled:=False;

FormLogin:=TFormLogin.Create(Self);
FormLogin.ShowModal;



end;

end.
