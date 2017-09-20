unit UnitAvisoConclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFormAvisoConclusao = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Panel1: TPanel;
    OK: TPanel;
    procedure OKMouseEnter(Sender: TObject);
    procedure OKMouseLeave(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvisoConclusao: TFormAvisoConclusao;

implementation

{$R *.dfm}

procedure TFormAvisoConclusao.OKClick(Sender: TObject);
begin
close;
end;

procedure TFormAvisoConclusao.OKMouseEnter(Sender: TObject);
begin
 ok.color:=$0000A6FF;
  ok.Repaint;
end;

procedure TFormAvisoConclusao.OKMouseLeave(Sender: TObject);
begin
ok.color:=clGray;
  ok.Repaint;
end;

end.
