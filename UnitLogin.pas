unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TFormLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EditLogin: TEdit;
    EditSenha: TEdit;
    btnEntrar: TPanel;
    ADOQueryLogin: TADOQuery;
    ADOQueryLoginid_usuarios: TAutoIncField;
    ADOQueryLoginlogin_usuario: TStringField;
    ADOQueryLoginsenha_usuario: TStringField;
    ADOQueryLogintipo: TStringField;
    Image3: TImage;
    Panel2: TPanel;

    procedure btnEntrarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEntrarMouseEnter(Sender: TObject);
    procedure btnEntrarMouseLeave(Sender: TObject);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitDataModule, UnitPrincipal, UnitUsuario, UnitSplash, UnitAvisoConclusao;

procedure TFormLogin.btnEntrarClick(Sender: TObject);
begin

   with ADOQueryLogin do

     begin
     if active then close;
     sql[2]:=('WHERE login_usuario ="'+EditLogin.Text+'"AND senha_usuario ="'+EditSenha.Text+'"');
     open;
     end;

if(ADOQueryLogin.RecordCount>0) then
  begin
  Usuario:=ADOQueryLoginlogin_usuario.Value;
  UsuarioCodigo:=ADOQueryLoginid_usuarios.Value;
  Logado:=True;
  UsuarioTipo:=ADOQueryLogintipo.Value;
  HoraLogado:=TimeToStr(time);
  GravaLog('Logou no Sistema');
  if UsuarioTipo='Funcionário' then
  begin
  FormPrincipal.AbaFornecedor.Visible:=False;
  FormPrincipal.AbaUsuario.Visible:=False;
  FormPrincipal.AbaCategoria.Visible:=False;
  FormPrincipal.AbaConFornecedor.Visible:=false;
  FormPrincipal.AbaConUsuario.Visible:=False;
  FormPrincipal.AbaConLogs.Visible:=False;
  FormPrincipal.AbaRelatorios.Visible:=False;
  FormPrincipal.AbaBackup.Visible:=False;
  end;

FormPrincipal.StatusBar1.Panels.Items[0].Text:=Usuario+', Seja bem vindo ao sistema';
FormPrincipal.Visible:=true;
FormLogin.Close;

  end
  else
  ShowMessage('Login ou senha inválidos !');
  logado:=false;
   end;


procedure TFormLogin.btnEntrarMouseEnter(Sender: TObject);
begin
btnEntrar.Color:=$004AC5FF;
btnEntrar.Repaint;
end;

procedure TFormLogin.btnEntrarMouseLeave(Sender: TObject);
begin
btnEntrar.Color:=$0000ACFF;
btnEntrar.Repaint;

end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
begin
  Key:= #0;

Perform(Wm_NextDlgCtl,0,0);
end;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
FormSplash.Visible:=false;
FormSplash.close;
end;

procedure TFormLogin.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormLogin.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormLogin.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
