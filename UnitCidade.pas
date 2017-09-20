unit UnitCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCidade = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Panel2: TPanel;
    btnLocalizar: TImage;
    btnNovo: TImage;
    btnEditar: TImage;
    btnSalvar: TImage;
    btnDeletar: TImage;
    btnCancelar: TImage;
    btnProximo: TImage;
    btnAnterior: TImage;
    Panel1: TPanel;
    Image1: TImage;
    DBComboBox1: TDBComboBox;
    Memo1: TMemo;
    Label13: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnLocalizarClick(Sender: TObject);
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
    procedure btnAnteriorMouseEnter(Sender: TObject);
    procedure btnAnteriorMouseLeave(Sender: TObject);
    procedure btnProximoMouseEnter(Sender: TObject);
    procedure btnProximoMouseLeave(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCidade: TFormCidade;

implementation

{$R *.dfm}

uses UnitAviso, UnitConsultaCidades, UnitPrincipal, UnitDataModule;

procedure TFormCidade.btnAnteriorClick(Sender: TObject);
begin
DataSource1.DataSet.Prior;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCidade.btnAnteriorMouseEnter(Sender: TObject);
begin
btnAnterior.Proportional:=True;
end;

procedure TFormCidade.btnAnteriorMouseLeave(Sender: TObject);
begin
btnAnterior.Proportional:=False;
end;

procedure TFormCidade.btnCancelarClick(Sender: TObject);
begin
DataSource1.DataSet.Cancel;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCidade.btnCancelarMouseEnter(Sender: TObject);
begin
btnCancelar.Proportional:=True;
end;

procedure TFormCidade.btnCancelarMouseLeave(Sender: TObject);
begin
btnCancelar.Proportional:=False;
end;

procedure TFormCidade.btnDeletarClick(Sender: TObject);
begin
GravaLog('Deletou uma cidade');
DataSource1.DataSet.Delete;
FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Cidade deletada !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCidade.btnDeletarMouseEnter(Sender: TObject);
begin
btnDeletar.Proportional:=True;
end;

procedure TFormCidade.btnDeletarMouseLeave(Sender: TObject);
begin
btnDeletar.Proportional:=False;
end;

procedure TFormCidade.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;
Memo1.Clear;
Memo1.Lines.Add('Editando...');
end;

procedure TFormCidade.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Proportional:=True;
end;

procedure TFormCidade.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Proportional:=False;
end;

procedure TFormCidade.btnLocalizarClick(Sender: TObject);
begin
 FormConsultaCidades:=TFormConsultaCidades.Create(self);
 DataModule1.ADOQueryConsultaCidades.Close;
 DataModule1.ADOQueryConsultaCidades.Open;
 FormConsultaCidades.ShowModal;
 Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCidade.btnLocalizarMouseEnter(Sender: TObject);
begin
btnLocalizar.Proportional:=True;
end;

procedure TFormCidade.btnLocalizarMouseLeave(Sender: TObject);
begin
btnLocalizar.Proportional:=False;
end;

procedure TFormCidade.btnNovoClick(Sender: TObject);
begin
DataSource1.DataSet.Insert;
Memo1.Clear;
Memo1.Lines.Add('Inserindo Novo');
end;

procedure TFormCidade.btnNovoMouseEnter(Sender: TObject);
begin
btnNovo.Proportional:=True;
end;

procedure TFormCidade.btnNovoMouseLeave(Sender: TObject);
begin
btnNovo.Proportional:=False;
end;

procedure TFormCidade.btnProximoClick(Sender: TObject);
begin
DataSource1.DataSet.Next;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCidade.btnProximoMouseEnter(Sender: TObject);
begin
btnProximo.Proportional:=True;
end;

procedure TFormCidade.btnProximoMouseLeave(Sender: TObject);
begin
btnProximo.Proportional:=False;
end;

procedure TFormCidade.btnSalvarClick(Sender: TObject);
begin
GravaLog('Salvou uma cidade');
DataSource1.DataSet.Post;
FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Cidade cadastrada !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Salvo');
end;

procedure TFormCidade.btnSalvarMouseEnter(Sender: TObject);
begin
btnSalvar.Proportional:=True;
end;

procedure TFormCidade.btnSalvarMouseLeave(Sender: TObject);
begin
btnSalvar.Proportional:=False;
end;

procedure TFormCidade.DataSource1DataChange(Sender: TObject; Field: TField);
begin
 btnSalvar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnCancelar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnNovo.Enabled:=(DataSource1.State in [dsBrowse]);
  btnEditar.Enabled:=(DataSource1.State in [dsBrowse]);
  btnDeletar.Enabled:=(DataSource1.State in [dsBrowse]) and (DataSource1.DataSet.RecordCount>0);

  btnAnterior.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.bof);
  btnProximo.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.eof);
end;

procedure TFormCidade.Image1Click(Sender: TObject);
begin
 close;
end;

procedure TFormCidade.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormCidade.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
