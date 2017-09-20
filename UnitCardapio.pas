unit UnitCardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Mask;

type
  TFormCardapio = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Memo1: TMemo;
    Label13: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCardapio: TFormCardapio;

implementation

{$R *.dfm}

uses UnitAviso, UnitConsultaCardapio, UnitPrincipal;

procedure TFormCardapio.btnAnteriorClick(Sender: TObject);
begin
DataSource1.DataSet.Prior;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCardapio.btnCancelarClick(Sender: TObject);
begin
DataSource1.DataSet.Cancel;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCardapio.btnDeletarClick(Sender: TObject);
begin
GravaLog('Deletou item Cardápio');
DataSource1.DataSet.Delete;
FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Item deletado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCardapio.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;
Memo1.Clear;
Memo1.Lines.Add('Editando...');
end;

procedure TFormCardapio.btnLocalizarClick(Sender: TObject);
begin
FormConsultaCardapio:=TFormConsultaCardapio.Create(self);
FormConsultaCardapio.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCardapio.btnNovoClick(Sender: TObject);
begin

DataSource1.DataSet.Insert;
Memo1.Clear;
Memo1.Lines.Add('Inserindo Novo');

end;

procedure TFormCardapio.btnProximoClick(Sender: TObject);
begin
DataSource1.DataSet.Next;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormCardapio.btnSalvarClick(Sender: TObject);
begin
GravaLog('Salvou item Cardápio');
DataSource1.DataSet.Post;
FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Item cadastrado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Salvo');
end;

procedure TFormCardapio.DataSource1DataChange(Sender: TObject; Field: TField);
begin
btnSalvar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnCancelar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnNovo.Enabled:=(DataSource1.State in [dsBrowse]);
  btnEditar.Enabled:=(DataSource1.State in [dsBrowse]);
  btnDeletar.Enabled:=(DataSource1.State in [dsBrowse]) and (DataSource1.DataSet.RecordCount>0);

  btnAnterior.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.bof);
  btnProximo.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.eof);
end;

procedure TFormCardapio.Image1Click(Sender: TObject);
begin
close;
end;

end.
