unit UnitAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormAviso = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    OK: TPanel;
    procedure FormShow(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure OKMouseEnter(Sender: TObject);
    procedure OKMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAviso: TFormAviso;

implementation

{$R *.dfm}

procedure TFormAviso.FormShow(Sender: TObject);
begin
Panel1.Left:=(self.Width - Panel1.Width)div 2;
Panel1.Top:=(self.Height - Panel1.Height)div 2;

end;

procedure TFormAviso.OKClick(Sender: TObject);
begin
Close;
end;

procedure TFormAviso.OKMouseEnter(Sender: TObject);
begin
  ok.color:=$0000A6FF;
  ok.Repaint;
end;

procedure TFormAviso.OKMouseLeave(Sender: TObject);
begin
  ok.color:=clGray;
  ok.Repaint;
end;

end.
