unit UnitProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.Buttons;

type
  TFormProduto = class(TForm)
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
    Memo1: TMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    DataSource2: TDataSource;
    Label13: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure btnAnteriorMouseEnter(Sender: TObject);
    procedure btnAnteriorMouseLeave(Sender: TObject);
    procedure btnProximoMouseEnter(Sender: TObject);
    procedure btnProximoMouseLeave(Sender: TObject);
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
  FormProduto: TFormProduto;

implementation

{$R *.dfm}

uses UnitAviso, UnitPrincipal, UnitConsultaProduto, UnitDataModule,
  UnitCategoria;

procedure TFormProduto.BitBtn1Click(Sender: TObject);
begin
FormCategoria:=TFormCategoria.Create(self);
FormCategoria.ShowModal;
end;

procedure TFormProduto.btnAnteriorClick(Sender: TObject);
begin
 DataSource1.DataSet.Prior;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormProduto.btnAnteriorMouseEnter(Sender: TObject);
begin
btnAnterior.Proportional:=True;
end;

procedure TFormProduto.btnAnteriorMouseLeave(Sender: TObject);
begin
btnAnterior.Proportional:=False;
end;

procedure TFormProduto.btnCancelarClick(Sender: TObject);
begin
 DataSource1.DataSet.Cancel;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormProduto.btnCancelarMouseEnter(Sender: TObject);
begin
btnCancelar.Proportional:=True;
end;

procedure TFormProduto.btnCancelarMouseLeave(Sender: TObject);
begin
btnCancelar.Proportional:=False;
end;

procedure TFormProduto.btnDeletarClick(Sender: TObject);
begin
  GravaLog('Deletou um produto');
DataSource1.DataSet.Delete;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Produto deletado!');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormProduto.btnDeletarMouseEnter(Sender: TObject);
begin
btnDeletar.Proportional:=True;
end;

procedure TFormProduto.btnDeletarMouseLeave(Sender: TObject);
begin
btnDeletar.Proportional:=False;
end;

procedure TFormProduto.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;
Memo1.Clear;
Memo1.Lines.Add('Editando...');

end;

procedure TFormProduto.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Proportional:=True;
end;

procedure TFormProduto.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Proportional:=False;
end;

procedure TFormProduto.btnLocalizarClick(Sender: TObject);
begin
FormConsultaProd:=TFormConsultaProd.Create(self);
DataModule1.ADOQueryConsultaProduto.Close;
DataModule1.ADOQueryConsultaProduto.Open;
FormConsultaProd.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormProduto.btnLocalizarMouseEnter(Sender: TObject);
begin
btnLocalizar.Proportional:=True;
end;

procedure TFormProduto.btnLocalizarMouseLeave(Sender: TObject);
begin
btnLocalizar.Proportional:=False;
end;

procedure TFormProduto.btnNovoClick(Sender: TObject);
begin
DataSource1.DataSet.Insert;
DBCheckBox1.Checked:=False;
Memo1.Clear;
Memo1.Lines.Add('Inserindo Novo');

end;

procedure TFormProduto.btnNovoMouseEnter(Sender: TObject);
begin
btnNovo.Proportional:=True;
end;

procedure TFormProduto.btnNovoMouseLeave(Sender: TObject);
begin
btnNovo.Proportional:=False;
end;

procedure TFormProduto.btnProximoClick(Sender: TObject);
begin

DataSource1.DataSet.Next;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormProduto.btnProximoMouseEnter(Sender: TObject);
begin
btnProximo.Proportional:=True;
end;

procedure TFormProduto.btnProximoMouseLeave(Sender: TObject);
begin
btnProximo.Proportional:=False;
end;

procedure TFormProduto.btnSalvarClick(Sender: TObject);
begin

GravaLog('Salvou um produto');
DataSource1.DataSet.Post;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Produto cadastrado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Salvo');
end;

procedure TFormProduto.btnSalvarMouseEnter(Sender: TObject);
begin
btnSalvar.Proportional:=True;
end;

procedure TFormProduto.btnSalvarMouseLeave(Sender: TObject);
begin
btnSalvar.Proportional:=False;
end;

procedure TFormProduto.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormProduto.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormProduto.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
