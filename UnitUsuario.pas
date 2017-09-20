unit UnitUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormUsuario = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    btnLocalizar: TImage;
    btnNovo: TImage;
    btnEditar: TImage;
    btnSalvar: TImage;
    btnDeletar: TImage;
    btnCancelar: TImage;
    btnProximo: TImage;
    btnAnterior: TImage;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Memo1: TMemo;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnLocalizarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnAnteriorMouseEnter(Sender: TObject);
    procedure btnAnteriorMouseLeave(Sender: TObject);
    procedure btnProximoMouseEnter(Sender: TObject);
    procedure btnProximoMouseLeave(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnSalvarMouseEnter(Sender: TObject);
    procedure btnSalvarMouseLeave(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnDeletarMouseEnter(Sender: TObject);
    procedure btnDeletarMouseLeave(Sender: TObject);
    procedure btnLocalizarMouseEnter(Sender: TObject);
    procedure btnLocalizarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuario: TFormUsuario;

implementation

{$R *.dfm}

uses UnitAviso, UnitConsultaUsuarios, UnitPrincipal, UnitDataModule;

procedure TFormUsuario.btnAnteriorClick(Sender: TObject);
begin
DataSource1.DataSet.Prior;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormUsuario.btnAnteriorMouseEnter(Sender: TObject);
begin
btnAnterior.Proportional:=True;
end;

procedure TFormUsuario.btnAnteriorMouseLeave(Sender: TObject);
begin
btnAnterior.Proportional:=False;
end;

procedure TFormUsuario.btnCancelarClick(Sender: TObject);
begin
DataSource1.DataSet.Cancel;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;


procedure TFormUsuario.btnCancelarMouseEnter(Sender: TObject);
begin
btnCancelar.Proportional:=True;
end;

procedure TFormUsuario.btnCancelarMouseLeave(Sender: TObject);
begin
btnCancelar.Proportional:=False;
end;

procedure TFormUsuario.btnDeletarClick(Sender: TObject);
begin
GravaLog('Deletou um usuário');
DataSource1.DataSet.Delete;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Usuário deletado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormUsuario.btnDeletarMouseEnter(Sender: TObject);
begin
btnDeletar.Proportional:=True;
end;

procedure TFormUsuario.btnDeletarMouseLeave(Sender: TObject);
begin
btnDeletar.Proportional:=False;
end;

procedure TFormUsuario.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;
Memo1.Clear;
Memo1.Lines.Add('Editando...');
end;

procedure TFormUsuario.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Proportional:=True;
end;

procedure TFormUsuario.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Proportional:=False;
end;

procedure TFormUsuario.btnLocalizarClick(Sender: TObject);
begin
FormConsultaUsuarios:=TFormConsultaUsuarios.Create(self);
DataModule1.ADOQueryConsultaUsuario.Close;
DataModule1.ADOQueryConsultaUsuario.Open;
FormConsultaUsuarios.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormUsuario.btnLocalizarMouseEnter(Sender: TObject);
begin
btnLocalizar.Proportional:=True;
end;

procedure TFormUsuario.btnLocalizarMouseLeave(Sender: TObject);
begin
btnLocalizar.Proportional:=False;
end;

procedure TFormUsuario.btnNovoClick(Sender: TObject);
begin
DataSource1.DataSet.Insert;
Memo1.Clear;
Memo1.Lines.Add('Inserindo Novo');
end;

procedure TFormUsuario.btnNovoMouseEnter(Sender: TObject);
begin
btnNovo.Proportional:=True;
end;

procedure TFormUsuario.btnNovoMouseLeave(Sender: TObject);
begin
btnNovo.Proportional:=False;
end;

procedure TFormUsuario.btnProximoClick(Sender: TObject);
begin
DataSource1.DataSet.Next;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormUsuario.btnProximoMouseEnter(Sender: TObject);
begin
btnProximo.Proportional:=True;
end;

procedure TFormUsuario.btnProximoMouseLeave(Sender: TObject);
begin
btnProximo.Proportional:=False;
end;

procedure TFormUsuario.btnSalvarClick(Sender: TObject);
begin
GravaLog('Salvou um usuário');
DataSource1.DataSet.Post;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Usuário cadastrado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Salvo');
end;

procedure TFormUsuario.btnSalvarMouseEnter(Sender: TObject);
begin
btnSalvar.Proportional:=True;
end;

procedure TFormUsuario.btnSalvarMouseLeave(Sender: TObject);
begin
btnSalvar.Proportional:=False;
end;

procedure TFormUsuario.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  btnSalvar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnCancelar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnNovo.Enabled:=(DataSource1.State in [dsBrowse]);
  btnEditar.Enabled:=(DataSource1.State in [dsBrowse]);
  btnDeletar.Enabled:=(DataSource1.State in [dsBrowse]) and (DataSource1.DataSet.RecordCount>0);

  btnAnterior.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.bof);
  btnProximo.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.eof);
end;

procedure TFormUsuario.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormUsuario.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormUsuario.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
