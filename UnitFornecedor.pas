unit UnitFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormFornecedor = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
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
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    Memo1: TMemo;
    Label13: TLabel;
    btnPlus: TButton;
    procedure Image1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);

    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);

    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
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
    procedure btnProximoMouseLeave(Sender: TObject);private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFornecedor: TFormFornecedor;

implementation

{$R *.dfm}

uses UnitAviso, UnitDataModule, UnitConsultaFornecedor, UnitCidade,
  UnitPrincipal;

procedure TFormFornecedor.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormFornecedor.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormFornecedor.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

procedure TFormFornecedor.btnDeletarClick(Sender: TObject);
begin
GravaLog('Deletou um fornecedor');
 DataSource1.DataSet.Delete;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Fornecedor deletado !');
FormAviso.ShowModal;
end;

procedure TFormFornecedor.btnDeletarMouseEnter(Sender: TObject);
begin
btnDeletar.Proportional:=True;
end;

procedure TFormFornecedor.btnDeletarMouseLeave(Sender: TObject);
begin
btnDeletar.Proportional:=False;
end;

procedure TFormFornecedor.btnNovoClick(Sender: TObject);
begin
DataSource1.DataSet.Insert;
Memo1.Clear;
Memo1.Lines.Add('Inserindo Novo');
end;

procedure TFormFornecedor.btnNovoMouseEnter(Sender: TObject);
begin
btnNovo.Proportional:=True;
end;

procedure TFormFornecedor.btnNovoMouseLeave(Sender: TObject);
begin
btnNovo.Proportional:=False;
end;

procedure TFormFornecedor.btnPlusClick(Sender: TObject);
begin
FormCidade:=TFormCidade.Create(self);
FormCidade.Color:=clWhite;
FormCidade.Memo1.Color:=clWhite;
FormCidade.btnLocalizar.Enabled:=false;
FormCidade.Repaint;
FormCidade.ShowModal;

end;

procedure TFormFornecedor.btnProximoClick(Sender: TObject);
begin
DataSource1.DataSet.Next;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormFornecedor.btnProximoMouseEnter(Sender: TObject);
begin
btnProximo.Proportional:=True;
end;

procedure TFormFornecedor.btnProximoMouseLeave(Sender: TObject);
begin
btnProximo.Proportional:=False;
end;

procedure TFormFornecedor.btnAnteriorMouseEnter(Sender: TObject);
begin
btnAnterior.Proportional:=True;
end;

procedure TFormFornecedor.btnAnteriorMouseLeave(Sender: TObject);
begin
btnAnterior.Proportional:=False;
end;

procedure TFormFornecedor.btnCancelarClick(Sender: TObject);
begin
DataSource1.DataSet.Cancel;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormFornecedor.btnCancelarMouseEnter(Sender: TObject);
begin
btnCancelar.Proportional:=True;
end;

procedure TFormFornecedor.btnCancelarMouseLeave(Sender: TObject);
begin
btnCancelar.Proportional:=False;
end;

procedure TFormFornecedor.btnEditarClick(Sender: TObject);
begin
DataSource1.DataSet.Edit;
Memo1.Clear;
Memo1.Lines.Add('Editando...');
end;

procedure TFormFornecedor.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Proportional:=True;
end;

procedure TFormFornecedor.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Proportional:=False;
end;

procedure TFormFornecedor.btnLocalizarClick(Sender: TObject);
begin
FormConsultaFornecedor:=TFormConsultaFornecedor.Create(Self);
DataModule1.ADOQueryConsultaFornecedor.Close;
DataModule1.ADOQueryConsultaFornecedor.Open;
FormConsultaFornecedor.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;

procedure TFormFornecedor.btnLocalizarMouseEnter(Sender: TObject);
begin
btnLocalizar.Proportional:=True;
end;

procedure TFormFornecedor.btnLocalizarMouseLeave(Sender: TObject);
begin
btnLocalizar.Proportional:=False;
end;

procedure TFormFornecedor.btnSalvarClick(Sender: TObject);
begin
GravaLog('Salvou um fornecedor');
DataSource1.DataSet.Post;

FormAviso:=TFormAviso.Create(self);
FormAviso.Memo1.Clear;
FormAviso.Memo1.Lines.Add('Fornecedor cadastrado !');
FormAviso.ShowModal;
Memo1.Clear;
Memo1.Lines.Add('Salvo');
end;

procedure TFormFornecedor.btnSalvarMouseEnter(Sender: TObject);
begin
btnSalvar.Proportional:=True;
end;

procedure TFormFornecedor.btnSalvarMouseLeave(Sender: TObject);
begin
btnSalvar.Proportional:=False;
end;

procedure TFormFornecedor.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  btnSalvar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnCancelar.Enabled:=(DataSource1.State in [dsEdit,dsInsert]);
  btnNovo.Enabled:=(DataSource1.State in [dsBrowse]);
  btnEditar.Enabled:=(DataSource1.State in [dsBrowse]);
  btnDeletar.Enabled:=(DataSource1.State in [dsBrowse]) and (DataSource1.DataSet.RecordCount>0);

  btnAnterior.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.bof);
  btnProximo.Enabled:=(DataSource1.State in [dsBrowse]) and (not DataSource1.DataSet.eof);
end;

procedure TFormFornecedor.btnAnteriorClick(Sender: TObject);
begin
DataSource1.DataSet.Prior;
Memo1.Clear;
Memo1.Lines.Add('Sem Ação');
end;



end.

