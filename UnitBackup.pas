unit UnitBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,ShellApi, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormBackup = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Panel4: TPanel;
    Image3: TImage;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);




    procedure Image3Click(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBackup: TFormBackup;

implementation

{$R *.dfm}



procedure TFormBackup.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormBackup.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormBackup.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormBackup.Image2Click(Sender: TObject);
var data,arquivo:string;
begin
 if (SaveDialog1.Execute) then
 begin
 arquivo:=SaveDialog1.FileName;
 data:=FormatDateTime('ddmmyy', Now);
 ShellExecute(Handle,'open','cmd.exe',Pchar('/c C:\xampp\mysql\bin\mysqldump.exe db_sistemafs8 -u root -h localhost -p --opt -v>'+arquivo+(data)+'.sql'),nil,SW_SHOW);
 end;
end;

procedure TFormBackup.Image2MouseEnter(Sender: TObject);
begin
Panel3.Color:=clMedGray;
Panel3.Repaint;
end;

procedure TFormBackup.Image2MouseLeave(Sender: TObject);
begin
Panel3.Color:=$005B5B5B;
Panel3.Repaint;
end;

procedure TFormBackup.Image3Click(Sender: TObject);
var arquivo:string;
begin
If (OpenDialog1.Execute) then
begin
arquivo:=OpenDialog1.FileName;
ShellExecute(Handle,'open','cmd.exe',Pchar('/c C:\xampp\mysql\bin\mysql.exe db_sistemafs8 -u root -h localhost -u root db_sistemafs8 < '+arquivo),nil,SW_SHOW);

end;
end;

procedure TFormBackup.Image3MouseEnter(Sender: TObject);
begin
Panel4.Color:=clMedGray;
Panel4.Repaint;
end;

procedure TFormBackup.Image3MouseLeave(Sender: TObject);
begin
Panel4.Color:=$005B5B5B;
Panel4.Repaint;
end;

end.
