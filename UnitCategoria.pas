unit UnitCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormCategoria = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    btnNovo: TImage;
    btnEditar: TImage;
    btnSalvar: TImage;
    btnDeletar: TImage;
    btnCancelar: TImage;
    btnProximo: TImage;
    btnAnterior: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DataSourceConsulta: TDataSource;
    Edit1: TEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    procedure Image1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategoria: TFormCategoria;

implementation

{$R *.dfm}

uses UnitAviso, UnitPrincipal, UnitDataModule;

procedure TFormCategoria.btnAnteriorClick(Sender: TObject);
begin
DataSource1.DataSet.Prior;

end;

procedure TFormCategoria.btnAnteriorMouseEnter(Sender: TObject);
begin
btnAnterior.Proportional:=True;
end;

procedure TFormCategoria.btnAnteriorMouseLeave(Sender: TObject);
begin
btnAnterior.Proportional:=False;
end;

procedure TFormCategoria.btnCancelarClick(Sender: TObject);
begin
 DataSource1.DataSet.Cancel;

end;

procedure TFormCategoria.btnCancelarMouseEnter(Sender: TObject);
begin
btnCancelar.Proportional:=True;
end;

procedure TFormCategoria.btnCancelarMouseLeave(Sender: TObject);
begin
btnCancelar.Proportional:=False;
end;

procedure TFormCategoria.btnDeletarClick(Sender: TObject);
begin

 GravaLog('Deletou uma categoria');
DataSource1.DataSet.Delete;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Categoria deletado!');
FormAviso.ShowModal;


end;

procedure TFormCategoria.btnDeletarMouseEnter(Sender: TObject);
begin
btnDeletar.Proportional:=True;
end;

procedure TFormCategoria.btnDeletarMouseLeave(Sender: TObject);
begin
btnDeletar.Proportional:=False;
end;

procedure TFormCategoria.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;


end;

procedure TFormCategoria.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Proportional:=True;
end;

procedure TFormCategoria.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Proportional:=False;
end;

procedure TFormCategoria.btnNovoClick(Sender: TObject);
begin

DataSource1.DataSet.Insert;

end;

procedure TFormCategoria.btnNovoMouseEnter(Sender: TObject);
begin
btnNovo.Proportional:=True;
end;

procedure TFormCategoria.btnNovoMouseLeave(Sender: TObject);
begin
btnNovo.Proportional:=False;
end;

procedure TFormCategoria.btnProximoClick(Sender: TObject);
begin
DataSource1.DataSet.Next;


end;

procedure TFormCategoria.btnProximoMouseEnter(Sender: TObject);
begin
btnProximo.Proportional:=True;
end;

procedure TFormCategoria.btnProximoMouseLeave(Sender: TObject);
begin
btnProximo.Proportional:=False;
end;

procedure TFormCategoria.btnSalvarClick(Sender: TObject);
begin
GravaLog('Salvou uma Categoria');
DataSource1.DataSet.Post;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Categoria cadastrado !');
FormAviso.ShowModal;

end;

procedure TFormCategoria.btnSalvarMouseEnter(Sender: TObject);
begin
btnSalvar.Proportional:=True;
end;

procedure TFormCategoria.btnSalvarMouseLeave(Sender: TObject);
begin
btnSalvar.Proportional:=False;
end;

procedure TFormCategoria.Edit1Change(Sender: TObject);
begin
with DataModule1.ADOQueryConsultaCategoria do

begin

sql[2]:= 'Where categoria like "%'+edit1.TExt+'%"';

open;

end;

end;

procedure TFormCategoria.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormCategoria.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormCategoria.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
