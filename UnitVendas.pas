unit UnitVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Buttons,
  Vcl.Imaging.pngimage, frxClass, frxDBSet;

type
  TFormVendas = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSourceVenda: TDataSource;
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
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSourceCliente: TDataSource;
    DataSourceMesa: TDataSource;
    ADOQueryProdutos: TADOQuery;
    ADOQueryItemVendas: TADOQuery;
    ADOQueryInsereProduto: TADOQuery;
    Edit1: TEdit;
    ADOQueryMesa: TADOQuery;
    ADOQueryDeleta: TADOQuery;
    DataSourceProduto: TDataSource;
    DataSourceItemVenda: TDataSource;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    ADOQueryMesaid_mesa: TAutoIncField;
    ADOQueryMesaocupada: TStringField;
    ADOQueryMesalocal: TStringField;
    ADOQueryConsultaVendas: TADOQuery;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    ADOQueryConsultaVendasid_vendas: TAutoIncField;
    ADOQueryConsultaVendasdata_venda: TDateTimeField;
    ADOQueryConsultaVendastotal_item_produto: TFloatField;
    ADOQueryConsultaVendasdesconto: TFloatField;
    ADOQueryConsultaVendasporcentagem_garcon: TFloatField;
    ADOQueryConsultaVendastotal_final: TFloatField;
    ADOQueryConsultaVendasativo: TStringField;
    ADOQueryConsultaVendastbl_cliente_id_cliente: TIntegerField;
    ADOQueryConsultaVendastbl_mesa_id_mesa: TIntegerField;
    ADOQuery1: TADOQuery;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    frxDBDatasetCVendas: TfrxDBDataset;
    Panel3: TPanel;
    Panel4: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Image2: TImage;
    Label10: TLabel;
    Timer1: TTimer;
    ADOQueryItemVendasid_item_venda: TAutoIncField;
    ADOQueryItemVendastbl_vendas_id_vendas: TIntegerField;
    ADOQueryItemVendastbl_produto_id_produto: TIntegerField;
    ADOQueryItemVendasquantidade: TIntegerField;
    ADOQueryItemVendaspreco_unitario: TFloatField;
    ADOQueryItemVendastotal_item: TFloatField;
    ADOQueryItemVendasobs: TStringField;
    ADOQueryItemVendasid_produto: TAutoIncField;
    ADOQueryItemVendasnome_produto: TStringField;
    ADOQueryItemVendasativo: TStringField;
    ADOQueryItemVendasquantidade_1: TIntegerField;
    ADOQueryItemVendaspreco: TFloatField;
    ADOQueryItemVendascob_barra: TStringField;
    ADOQueryItemVendastbl_categoria_id_categoria: TIntegerField;
    ADOQueryItemVendasid_vendas: TAutoIncField;
    ADOQueryItemVendasdata_venda: TDateTimeField;
    ADOQueryItemVendastotal_item_produto: TFloatField;
    ADOQueryItemVendasdesconto: TFloatField;
    ADOQueryItemVendasporcentagem_garcon: TFloatField;
    ADOQueryItemVendastotal_final: TFloatField;
    ADOQueryItemVendasativo_1: TStringField;
    ADOQueryItemVendastbl_cliente_id_cliente: TIntegerField;
    ADOQueryItemVendastbl_mesa_id_mesa: TIntegerField;
    ADOQueryItemVendasid_cliente: TAutoIncField;
    ADOQueryItemVendasnome_cliente: TStringField;
    ADOQueryItemVendascpf_cliente: TStringField;
    ADOQueryItemVendasrg_cliente: TStringField;
    ADOQueryItemVendasend_cliente: TStringField;
    ADOQueryItemVendasend_n_cliente: TStringField;
    ADOQueryItemVendasend_b_cliente: TStringField;
    ADOQueryItemVendascep_cliente: TStringField;
    ADOQueryItemVendastelefone_cliente: TStringField;
    ADOQueryItemVendasdatanasc: TDateField;
    ADOQueryItemVendasobs_1: TStringField;
    ADOQueryItemVendastbl_cidade_id_cidade: TIntegerField;
    ADOQueryAtualizarValor: TADOQuery;
    ADOQueryAtualizarValorSUMtotal_item: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Panel3MouseEnter(Sender: TObject);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel4MouseEnter(Sender: TObject);
    procedure Panel4MouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendas: TFormVendas;
  CodigoVenda:string;
  TotalVenda:double;
  obs:string;
  precoun:double;
  NumeroMesa:Integer;



implementation

{$R *.dfm}

uses UnitDataModule, UnitPrincipal, UnitAvisoConclusao;

procedure TFormVendas.DBEdit4Change(Sender: TObject);
var desconto:Integer; total:Double;
begin
if DBEdit6.Text>'' then total:=StrToFloat(DBEdit6.text);
  if DBEdit4.Text>'' then
  begin

    desconto:=strtoint(DBEdit4.Text);
    total:=total-(total*(desconto/100));
  DBEdit3.Text:=FloatToStr(total);
  end
  else
  desconto:=0;

end;

procedure TFormVendas.DBEdit5Change(Sender: TObject);
var garcom:Integer; total:Double;


begin
  if DBEdit6.Text>'' then  total:=StrToFloat(DBEdit6.text);
  if DBEdit5.Text>'' then
  begin
   garcom:=strtoint(DBEdit5.Text);
   total:=total+(total*(garcom/100));
  DBEdit3.Text:=FloatToStr(total);
  end
  else
  garcom:=0;


end;

procedure TFormVendas.DBGrid1DblClick(Sender: TObject);
var quantidadeitem, produto:Integer; preco,  totalitem:Double;
begin
 quantidadeitem:=0;

quantidadeitem:=StrToInt(InputBox('Quantidade','Digite a quantidade do produto','0'));
if quantidadeitem>0 then     begin

if (quantidadeitem> strtoint(DBGrid1.Fields[2].text)) then begin



FormAvisoConclusao:=TFormAvisoConclusao.Create(self);
FormAvisoConclusao.Memo1.Clear;
FormAvisoConclusao.Memo1.Lines.Add('Quantidade maior do que a de estoque!');
FormAvisoConclusao.Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Aviso\alerta.png');
FormAvisoConclusao.ShowModal;





end
else begin

produto:=StrToInt((DBGrid1.Fields[0].Text));
preco:=StrToFloat((DBGrid1.Fields[3].Text));
CodigoVenda:=DBEdit1.Text;
totalitem:=preco;
With ADOQueryInsereProduto do

begin

if Active then close;
SQL.Clear;
//Sql.Add('INSERT INTO tbl_itens_venda (tbl_vendas_id_vendas, tbl_produto_id_produto, quantidade, preco_unitario, total_item, obs) VALUES ("'+CodigoVenda+'", '+IntToStr(produto)+', '+IntToStr(quantidadeitem)+', '+FloatToStr(precouni)+', '+FloatToStr(totalitem)+', "'+obs+'")');
Sql.Add('INSERT INTO tbl_itens_venda (tbl_vendas_id_vendas, tbl_produto_id_produto, quantidade, preco_unitario, total_item, obs) VALUES (:ItemVenda,:ItemProduto,:ItemQtd,:PrecoUni,:TotalItem,:Obs)');

Parameters.ParamByName('ItemVenda').Value:=CodigoVenda;
Parameters.ParamByName('ItemProduto').Value:=produto;
Parameters.ParamByName('ItemQtd').Value:=quantidadeitem;
Parameters.ParamByName('PrecoUni').Value:=precoun;
Parameters.ParamByName('TotalItem').Value:=totalitem;
Parameters.ParamByName('Obs').Value:=obs;
ExecSQL;


ADOQueryProdutos.Close;
ADOQueryProdutos.Open;
FormPrincipal.ADOQueryMesas.Close;
FormPrincipal.ADOQueryMesas.Open;
end;

with ADOQueryItemVendas do

begin

if Active then close;
sql[8]:='WHERE tbl_vendas_id_vendas ='+(CodigoVenda);
open;
end;


TotalVenda:=TotalVenda+(preco*quantidadeitem);
DBEdit6.Text:=FloatToStr(TotalVenda);
DBEdit3.Text:=FloatToStr(TotalVenda);
ADOQueryProdutos.Close;
ADOQueryProdutos.Open;

end;
end;
end;

procedure TFormVendas.DBGrid2DblClick(Sender: TObject);
var id_item_venda :Integer;  totalitem:Double;
begin
//quantidadeitem:=StrToInt(InputBox('Quantidade','Digite a quantidade do produto','1'));
id_item_venda:=StrToInt((DBGrid2.Fields[0].Text));
totalitem:=StrToFloat((DBGrid2.Fields[3].Text));
//ShowMessage('id_item_venda '+IntToStr(id_item_venda)+' totalitem'+FloatToStr(totalitem));
FormAvisoConclusao:=TFormAvisoConclusao.Create(self);
FormAvisoConclusao.Memo1.Clear;
FormAvisoConclusao.Memo1.Lines.Add('Item removido com sucesso!');
FormAvisoConclusao.Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Aviso\cancelar.png');
FormAvisoConclusao.ShowModal;


With ADOQueryInsereProduto do

begin

if Active then close;
SQL.Clear;

Sql.Add('DELETE FROM tbl_itens_venda WHERE id_item_venda = :id_item_venda');

Parameters.ParamByName('id_item_venda').Value:=id_item_venda;
ExecSQL;

TotalVenda:=TotalVenda-totalitem;
ADOQueryItemVendas.Open;
ADOQueryItemVendas.Close;
ADOQueryProdutos.Close;
ADOQueryProdutos.Open;

ADOQueryItemVendas.Open;

end;
end;

procedure TFormVendas.Edit1Change(Sender: TObject);
begin

with ADOQueryProdutos do

begin

if active then close;
SQL[2]:='WHERE nome_produto LIKE "%'+Edit1.Text+'%"';
open;

end;

end;

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DataSourceVenda.State in [dsInsert,dsEdit] then
  DataSourceVenda.DataSet.Post;
end;

procedure TFormVendas.FormCreate(Sender: TObject);
var ocupada:string;
begin
  DBEdit4.Text:='';
  DBEdit5.Text:='';
 Label9.Caption:=mesas;
if mesastatus='Ocupado' then

begin
  //filtrar o table venda com o código da mesa e verificar venda ativa;
  with ADOQueryConsultaVendas do
  begin
  if Active then Close;
  SQL[2]:='Where tbl_mesa_id_mesa ='+mesas+' AND ativo = "True"';
  open;
  end;

  DataModule1.ADOTableVendas.Locate('id_vendas', ADOQueryConsultaVendasid_vendas.Value, [loCaseInsensitive, loPartialKey]);
  CodigoVenda:=DBEdit1.Text;
  // fazer o locate em table vendas com o dado da query venda

  with  ADOQueryAtualizarValor do
  begin
    sql[1]:='WHERE tbl_vendas_id_vendas ='+CodigoVenda;
    open;
  end;


  //repetir sql itens venda

  with ADOQueryProdutos do
  begin
    if active then close;
    SQL[2]:='WHERE nome_produto LIKE "%'+edit1.text+'%"';
    open;
  end;

   with ADOQueryItemVendas do
  begin
    if Active then close;
    sql[8]:='WHERE tbl_vendas_id_vendas ='+CodigoVenda;
    open;
  end;
DataModule1.ADOTableVendas.Edit;

  DBEdit6.Text:= FloatToStr(ADOQueryAtualizarValorSUMtotal_item.Value);
  DBEdit3.Text:= FloatToStr(ADOQueryAtualizarValorSUMtotal_item.Value);
end

else
  begin

with ADOQueryMesa do

begin

if active then close;
SQL[2]:='WHERE id_mesa ='+mesas;
open;

ocupada:=ADOQueryMesaocupada.Value;
//ShowMessage(ADOQueryMesa.FieldByName('ocupada').AsString);

DataSourceVenda.DataSet.Insert;
DBEdit2.Text:=DateToStr(Date);
dbedit7.Text:=(mesas);
DBEdit6.Text:='0';
DataSourceVenda.DataSet.Post;
DataSourceVenda.DataSet.Open;
DataModule1.ADOTableVendas.Edit;

end;
begin
With ADOQuery1 do
begin
SQL.Clear;
Sql.Add('UPDATE tbl_mesa SET ocupada = "True" WHERE id_mesa = '+mesas+'');
ExecSQL;
SQL.Clear;
sql.Add('UPDATE tbl_vendas SET ativo = "True" WHERE id_vendas = '+DBEdit1.Text+'');
ExecSQL;
end;
end;
  end;
end;

procedure TFormVendas.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormVendas.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormVendas.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

procedure TFormVendas.Image2Click(Sender: TObject);
begin
DataSourceVenda.DataSet.Post;
  close;
end;

procedure TFormVendas.Image2MouseEnter(Sender: TObject);
begin
Image2.Stretch:=True;
end;

procedure TFormVendas.Image2MouseLeave(Sender: TObject);
begin
Image2.Stretch:=False;
end;

procedure TFormVendas.Panel3Click(Sender: TObject);
begin
 if DBEdit4.Text='' then
    DBEdit4.Text:='0';

 DataSourceVenda.DataSet.Post;
// desocupar a mesa (utilizando UPDATE na tabela de mesas, filtrando pela variavel mesas (codigo da mesa) )
  With ADOQuery1 do
 begin
  SQL.Clear;
  Sql.Add('UPDATE tbl_mesa SET ocupada = "False" WHERE id_mesa ='+mesas+'');
  ExecSQL;
  SQL.Clear;
  sql.Add('UPDATE tbl_vendas SET ativo = "False" WHERE id_vendas ='+DBEdit1.Text+'');
  ExecSQL;

  FormPrincipal.ADOQueryMesas.Close;
  FormPrincipal.ADOQueryMesas.Open;
end;

  FormAvisoConclusao:=TFormAvisoConclusao.Create(self);
  FormAvisoConclusao.ShowModal;
 // por último o relatorio da mesa
  DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriovendas.fr3');
  DataModule1.frxReport1.ShowReport(True);
  FormVendas.Close;

end;

procedure TFormVendas.Panel3MouseEnter(Sender: TObject);
begin

Panel3.Color:=$0000A600;
end;

procedure TFormVendas.Panel3MouseLeave(Sender: TObject);
begin
Panel3.Color:=$005B5B5B;
end;

procedure TFormVendas.Panel4Click(Sender: TObject);
begin
DataSourceVenda.DataSet.Post;

with ADOQueryDeleta do
begin
CodigoVenda:=DBEdit1.Text;
SQL.Add('DELETE FROM tbl_itens_venda WHERE tbl_vendas_id_vendas = '+CodigoVenda);
ExecSQL;
DataSourceVenda.DataSet.Delete;
close;
ADOQuery1.SQL.Add('UPDATE tbl_mesa SET ocupada = "False" WHERE id_mesa = '+mesas+'');
ADOQuery1.SQL.Add('UPDATE tbl_venda SET ativo = "False" WHERE id_venda = '+DBEdit1.Text+'');
ADOQueryItemVendas.Open;
ADOQueryItemVendas.Close;
ADOQueryProdutos.Close;
ADOQueryProdutos.Open;
FormPrincipal.ADOQueryMesas.Close;
FormPrincipal.ADOQueryMesas.Open;

FormAvisoConclusao:=TFormAvisoConclusao.Create(self);
FormAvisoConclusao.Memo1.Clear;
FormAvisoConclusao.Memo1.Lines.Add('Venda cancelada!');
FormAvisoConclusao.Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Aviso\cancelar.png');
FormAvisoConclusao.ShowModal;
FormVendas.Close;

end;

With ADOQuery1 do
begin
SQL.Clear;
Sql.Add('UPDATE tbl_mesa SET ocupada = "False" WHERE id_mesa ='+mesas+'');
ExecSQL;
SQL.Clear;
sql.Add('UPDATE tbl_vendas SET ativo = "False" WHERE id_vendas ='+DBEdit1.Text+'');
ExecSQL;
FormPrincipal.ADOQueryMesas.Close;
FormPrincipal.ADOQueryMesas.Open;
end;

end;

procedure TFormVendas.Panel4MouseEnter(Sender: TObject);
begin
Panel4.Color:=clRed;
end;

procedure TFormVendas.Panel4MouseLeave(Sender: TObject);
begin
Panel4.Color:=$005B5B5B;
end;

procedure TFormVendas.Timer1Timer(Sender: TObject);
begin
  ADOQueryItemVendas.Close;
  ADOQueryItemVendas.Open;
end;

end.

