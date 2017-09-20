unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCGrids, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    Image1: Timage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel2: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel3: TPanel;
    AbaCadastro: TPanel;
    AbaConsultar: TPanel;
    ADOQueryMesas: TADOQuery;
    DataSourceMesa: TDataSource;
    BitBtn5: TBitBtn;
    DBText1: TDBText;
    Image10: TImage;
    Label1: TLabel;
    ADOQueryMesasid_mesa: TAutoIncField;
    ADOQueryMesasocupada: TStringField;
    ADOQueryMesaslocal: TStringField;
    ADOQueryInsereMesa: TADOQuery;
    Timer2: TTimer;
    AbaRelatorios: TPanel;
    Image3: TImage;
    AbaPosCadastro: TPanel;
    AbaProduto: TPanel;
    AbaVoltar: TPanel;
    AbaUsuario: TPanel;
    AbaCategoria: TPanel;
    AbaFornecedor: TPanel;
    AbaCidade: TPanel;
    AbaCliente: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    AbaPosConsulta: TPanel;
    Label4: TLabel;
    AbaConProduto: TPanel;
    Panel6: TPanel;
    Image4: TImage;
    AbaConUsuario: TPanel;
    AbaConFornecedor: TPanel;
    AbaConCidade: TPanel;
    AbaConCliente: TPanel;
    AbaConLogs: TPanel;
    AbaPosRelatorio: TPanel;
    Label5: TLabel;
    AbaRelProduto: TPanel;
    Panel7: TPanel;
    Image5: TImage;
    AbaRelCategoria: TPanel;
    AbaRelFornecedor: TPanel;
    AbaRelCidade: TPanel;
    AbaRelCliente: TPanel;
    AbaBackup: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    AbaRelLogs: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AbaFornecedorClick(Sender: TObject);
    procedure AbaProdutoClick(Sender: TObject);
    procedure AbaCadastroMouseLeave(Sender: TObject);
    procedure AbaCadastroMouseEner(Sender: TObject);
    procedure AbaConsultarMouseLeave(Sender: TObject);
    procedure AbaConsultarMouseEnter(Sender: TObject);
    procedure AbaRelatoriosMouseLeave(Sender: TObject);
    procedure AbaRelatoriosMouseEnter(Sender: TObject);
    procedure PanelSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure AbaClienteMouseEnter(Sender: TObject);
    procedure AbaClienteMouseLeave(Sender: TObject);
    procedure AbaProdutoMouseEnter(Sender: TObject);
    procedure AbaProdutoMouseLeave(Sender: TObject);
    procedure AbaUsuarioMouseEnter(Sender: TObject);
    procedure AbaUsuarioMouseLeave(Sender: TObject);
    procedure AbaFornecedorMouseEnter(Sender: TObject);
    procedure AbaFornecedorMouseLeave(Sender: TObject);
    procedure AbaCidadeMouseEnter(Sender: TObject);
    procedure AbaCidadeMouseLeave(Sender: TObject);
    procedure AbaCadastroClick(Sender: TObject);
    procedure AbaCategoriaMouseEnter(Sender: TObject);
    procedure AbaCategoriaMouseLeave(Sender: TObject);
    procedure AbaClienteClick(Sender: TObject);
    procedure AbaUsuarioClick(Sender: TObject);
    procedure AbaCidadeClick(Sender: TObject);
    procedure AbaCategoriaClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure AbaConClienteMouseEnter(Sender: TObject);
    procedure AbaConClienteMouseLeave(Sender: TObject);
    procedure AbaConProdutoMouseEnter(Sender: TObject);
    procedure AbaConProdutoMouseLeave(Sender: TObject);
    procedure AbaConUsuarioMouseEnter(Sender: TObject);
    procedure AbaConUsuarioMouseLeave(Sender: TObject);
    procedure AbaConFornecedorMouseEnter(Sender: TObject);
    procedure AbaConFornecedorMouseLeave(Sender: TObject);
    procedure AbaConCidadeMouseEnter(Sender: TObject);
    procedure AbaConCidadeMouseLeave(Sender: TObject);
    procedure AbaConLogsMouseEnter(Sender: TObject);
    procedure AbaConLogsMouseLeave(Sender: TObject);
    procedure AbaConsultarClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure AbaConClienteClick(Sender: TObject);
    procedure AbaConProdutoClick(Sender: TObject);
    procedure AbaConUsuarioClick(Sender: TObject);
    procedure AbaConFornecedorClick(Sender: TObject);
    procedure AbaConCidadeClick(Sender: TObject);
    procedure AbaConLogsClick(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure AbaRelatoriosClick(Sender: TObject);
    procedure AbaRelClienteMouseEnter(Sender: TObject);
    procedure AbaRelClienteMouseLeave(Sender: TObject);
    procedure AbaRelProdutoMouseEnter(Sender: TObject);
    procedure AbaRelProdutoMouseLeave(Sender: TObject);
    procedure AbaRelFornecedorMouseEnter(Sender: TObject);
    procedure AbaRelFornecedorMouseLeave(Sender: TObject);
    procedure AbaRelCidadeMouseEnter(Sender: TObject);
    procedure AbaRelCidadeMouseLeave(Sender: TObject);
    procedure AbaRelCategoriaMouseEnter(Sender: TObject);
    procedure AbaRelCategoriaMouseLeave(Sender: TObject);
    procedure AbaRelClienteClick(Sender: TObject);
    procedure AbaRelProdutoClick(Sender: TObject);
    procedure AbaRelLogsClick(Sender: TObject);
    procedure AbaRelFornecedorClick(Sender: TObject);
    procedure AbaRelCidadeClick(Sender: TObject);
    procedure AbaRelVendaClick(Sender: TObject);
    procedure AbaRelCategoriaClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AbaBackupMouseEnter(Sender: TObject);
    procedure AbaBackupMouseLeave(Sender: TObject);
    procedure AbaBackupClick(Sender: TObject);
    procedure AbaRelLogsMouseEnter(Sender: TObject);
    procedure AbaRelLogsMouseLeave(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure GravaLog(acao:string);

var
  FormPrincipal: TFormPrincipal;
  Logado:Boolean;
  Usuario:string;
  UsuarioCodigo:Integer;
  UsuarioTipo:string;
  HoraLogado:string;
  mesas:string;
  mesastatus:string;

implementation

{$R *.dfm}

uses UnitCliente, UnitCidade, UnitFornecedor, UnitLogin, UnitConsultaProduto,
  UnitConsultaCliente, UnitProduto, UnitUsuario,
  UnitConsultaUsuarios, UnitDataModule, UnitConsultaLogs, UnitSplash,
  UnitVendas, UnitMesas, UnitCategoria, UnitConsultaFornecedor,
  UnitConsultaCidades, UnitBackup;


procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
logado:=false;
StatusBar1.Panels.Items[0].Text:='Seja Bem Vindo';
StatusBar1.Panels.Items[1].Text:='Hoje é '+FormatDateTime('dddddd',Now);
FormPrincipal.Visible:=false;
FormSplash:=TFormSplash.Create(Self);
FormSplash.ShowModal;

end;

procedure TFormPrincipal.Image10Click(Sender: TObject);
begin
mesas:=DBText1.Caption;
DataModule1.ADOTableVendas.Close;
DataModule1.ADOTableVendas.Open;
if Label1.Caption = 'Ocupado' then
begin
  mesastatus:='Ocupado';
  FormVendas:=TFormVendas.Create(self);
  Formvendas.ADOQueryItemVendas.Close;
  Formvendas.ADOQueryItemVendas.Open;
  FormVendas.ShowModal;
end

else
begin
mesastatus:='Disponível';
// ocupar a mesa (utilizando UPDATE na tabela de mesas, filtrando pelo dbedit)

ADOQueryInsereMesa.SQL.Clear;
ADOQueryInsereMesa.SQL.Add('update tbl_mesa set ocupada = "True" WHERE id_mesa = '+DBText1.Caption);
ADOQueryInsereMesa.ExecSQL;
ADOQueryMesas.Close;
ADOQueryMesas.Open;
FormVendas:=TFormVendas.Create(self);
FormVendas.ShowModal;

{DataModule1.ADOTableMesa.Open;

for I := 0 to DataModule1.ADOTableMesa.RecordCount do begin

if IntToStr(DataModule1.ADOTableMesaid_mesa.Value) = DBText1.Caption then

begin
  DataModule1.ADOTableMesa.Edit;
  DataModule1.ADOTableMesaocupada.AsString:='True';
  DataModule1.ADOTableMesa.Post;
  FormVendas:=TFormVendas.Create(Self);
  FormVendas.ShowModal;
end
else
DataModule1.ADOTableMesa.Next;

end;


ADOQueryMesas.Close;
ADOQueryMesas.Open;

 }
end;
end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;


procedure TFormPrincipal.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormPrincipal.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
Panel3.Visible:=True;
AbaPosCadastro.Visible:=False;
end;

procedure TFormPrincipal.Image2MouseEnter(Sender: TObject);
begin
Image2.Proportional:=True;
end;

procedure TFormPrincipal.Image2MouseLeave(Sender: TObject);
begin
Image2.Proportional:=False;
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
WindowState:=wsMinimized;
end;

procedure TFormPrincipal.Image3MouseEnter(Sender: TObject);
begin
Image3.Proportional:=True;
end;

procedure TFormPrincipal.Image3MouseLeave(Sender: TObject);
begin
Image3.Proportional:=False;
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
Panel3.Visible:=True;
AbaPosConsulta.Visible:=False;
end;

procedure TFormPrincipal.Image4MouseEnter(Sender: TObject);
begin
Image4.Proportional:=True;
end;

procedure TFormPrincipal.Image4MouseLeave(Sender: TObject);
begin
Image4.Proportional:=False;
end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
Panel3.Visible:=True;
AbaPosRelatorio.Visible:=False;
end;

procedure TFormPrincipal.Image5MouseEnter(Sender: TObject);
begin
Image5.Proportional:=True;
end;

procedure TFormPrincipal.Image5MouseLeave(Sender: TObject);
begin
Image5.Proportional:=False;
end;

procedure TFormPrincipal.AbaClienteClick(Sender: TObject);
begin
FormCliente:=TFormCliente.Create(self);
FormCliente.ShowModal;
end;

procedure TFormPrincipal.AbaClienteMouseEnter(Sender: TObject);
begin
AbaCliente.color:=clMedGray;
AbaCliente.Repaint;
end;

procedure TFormPrincipal.AbaClienteMouseLeave(Sender: TObject);
begin
AbaCliente.color:=$005B5B5B;
AbaCliente.Repaint;
end;

procedure TFormPrincipal.PanelSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormPrincipal.AbaProdutoClick(Sender: TObject);
begin
FormProduto:=TFormProduto.Create(self);
FormProduto.ShowModal;
end;

procedure TFormPrincipal.AbaProdutoMouseEnter(Sender: TObject);
begin
AbaProduto.color:=clMedGray;
AbaProduto.Repaint;
end;

procedure TFormPrincipal.AbaProdutoMouseLeave(Sender: TObject);
begin
AbaProduto.color:=$005B5B5B;
AbaProduto.Repaint;
end;

procedure TFormPrincipal.AbaRelatoriosClick(Sender: TObject);
begin
Panel3.Visible:=False;
AbaPosRelatorio.Visible:=True;
AbaPosRelatorio.Align:=alLeft;
end;

procedure TFormPrincipal.AbaRelatoriosMouseEnter(Sender: TObject);
begin
AbaRelatorios.color:=clMedGray;
AbaRelatorios.Repaint;
end;

procedure TFormPrincipal.AbaRelatoriosMouseLeave(Sender: TObject);
begin
AbaRelatorios.color:=$005B5B5B;
AbaRelatorios.Repaint;
end;

procedure TFormPrincipal.AbaRelCategoriaClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriocategoria.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelCategoriaMouseEnter(Sender: TObject);
begin
AbaRelCategoria.color:=clMedGray;
AbaRelCategoria.Repaint;
end;

procedure TFormPrincipal.AbaRelCategoriaMouseLeave(Sender: TObject);
begin
AbaRelCategoria.color:=$005B5B5B;
AbaRelCategoria.Repaint;
end;

procedure TFormPrincipal.AbaRelCidadeClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriocidade.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelCidadeMouseEnter(Sender: TObject);
begin
AbaRelCidade.color:=clMedGray;
AbaRelCidade.Repaint;
end;

procedure TFormPrincipal.AbaRelCidadeMouseLeave(Sender: TObject);
begin
AbaRelCidade.color:=$005B5B5B;
AbaRelCidade.Repaint;
end;

procedure TFormPrincipal.AbaRelClienteClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriocliente.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelClienteMouseEnter(Sender: TObject);
begin
AbaRelCliente.color:=clMedGray;
AbaRelCliente.Repaint;
end;

procedure TFormPrincipal.AbaRelClienteMouseLeave(Sender: TObject);
begin
AbaRelCliente.color:=$005B5B5B;
AbaRelCliente.Repaint;
end;

procedure TFormPrincipal.AbaRelFornecedorClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriofornecedor.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelFornecedorMouseEnter(Sender: TObject);
begin
AbaRelFornecedor.color:=clMedGray;
AbaRelFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaRelFornecedorMouseLeave(Sender: TObject);
begin
AbaRelFornecedor.color:=$005B5B5B;
AbaRelFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaRelLogsClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriologs.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelLogsMouseEnter(Sender: TObject);
begin
AbaRelLogs.color:=clMedGray;
AbaRelLogs.Repaint;
end;

procedure TFormPrincipal.AbaRelLogsMouseLeave(Sender: TObject);
begin
AbaRelLogs.color:=$005B5B5B;
AbaRelLogs.Repaint;
end;

procedure TFormPrincipal.AbaRelProdutoClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatorioproduto.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaRelProdutoMouseEnter(Sender: TObject);
begin
AbaRelProduto.color:=clMedGray;
AbaRelProduto.Repaint;
end;

procedure TFormPrincipal.AbaRelProdutoMouseLeave(Sender: TObject);
begin
AbaRelProduto.color:=$005B5B5B;
AbaRelProduto.Repaint;
end;

procedure TFormPrincipal.AbaRelVendaClick(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriovenda.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormPrincipal.AbaUsuarioClick(Sender: TObject);
begin
FormUsuario:=TFormUsuario.Create(self);
FormUsuario.ShowModal;
end;

procedure TFormPrincipal.AbaUsuarioMouseEnter(Sender: TObject);
begin
AbaUsuario.color:=clMedGray;
AbaUsuario.Repaint;

end;

procedure TFormPrincipal.AbaUsuarioMouseLeave(Sender: TObject);
begin
AbaUsuario.color:=$005B5B5B;
AbaUsuario.Repaint;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
FormVendas:=TFormVendas.Create(Self);
FormVendas.ShowModal;
end;

procedure TFormPrincipal.BitBtn6Click(Sender: TObject);
begin
FormMesas:=TFormMesas.Create(Self);
FormMesas.ShowModal;
end;

procedure TFormPrincipal.BitBtn7Click(Sender: TObject);
begin
FormCategoria:=TFormCategoria.Create(Self);
FormCategoria.ShowModal;
end;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
FormBackup:=TFormBackup.Create(Self);
FormBackup.ShowModal;
end;

procedure TFormPrincipal.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin

if DBCtrlGrid1.DataSource.DataSet.FieldByName('ocupada').AsString='False' then //ocupado
begin

Label1.Caption:='Disponível';
Image10.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Mesas\MesaLivre.png');

end
else
begin
Label1.Caption:='Ocupado';
Image10.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Mesas\MesaOcupada.png');
end
end;

procedure TFormPrincipal.AbaConCidadeClick(Sender: TObject);
begin
FormConsultaCidades:=TFormConsultaCidades.Create(self);
DataModule1.ADOQueryConsultaCidades.Close;
DataModule1.ADOQueryConsultaCidades.Open;
FormConsultaCidades.ShowModal;
end;

procedure TFormPrincipal.AbaConCidadeMouseEnter(Sender: TObject);
begin
AbaConCidade.color:=clMedGray;
AbaConCidade.Repaint;
end;

procedure TFormPrincipal.AbaConCidadeMouseLeave(Sender: TObject);
begin
AbaConCidade.color:=$005B5B5B;
AbaConCidade.Repaint;
end;

procedure TFormPrincipal.AbaConClienteClick(Sender: TObject);
begin
FormConulstaCliente:=TFormConulstaCliente.Create(self);
DataModule1.ADOQueryConsultaCliente.Close;
DataModule1.ADOQueryConsultaCliente.Open;
FormConulstaCliente.ShowModal;
end;

procedure TFormPrincipal.AbaConClienteMouseEnter(Sender: TObject);
begin
AbaConCliente.color:=clMedGray;
AbaConCliente.Repaint;
end;

procedure TFormPrincipal.AbaConClienteMouseLeave(Sender: TObject);
begin
AbaConCliente.color:=$005B5B5B;
AbaConCliente.Repaint;
end;

procedure TFormPrincipal.AbaConFornecedorClick(Sender: TObject);
begin
FormConsultaFornecedor:=TFormConsultaFornecedor.Create(self);
DataModule1.ADOQueryConsultaFornecedor.Close;
DataModule1.ADOQueryConsultaFornecedor.Open;
FormConsultaFornecedor.ShowModal;
end;

procedure TFormPrincipal.AbaConFornecedorMouseEnter(Sender: TObject);
begin
AbaConFornecedor.color:=clMedGray;
AbaConFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaConFornecedorMouseLeave(Sender: TObject);
begin
AbaConFornecedor.color:=$005B5B5B;
AbaConFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaConLogsClick(Sender: TObject);
begin
FormConsultaLogs:=TFormConsultaLogs.Create(self);
DataModule1.ADOQueryConsultaLogs.Close;
DataModule1.ADOQueryConsultaLogs.Open;
FormConsultaLogs.ShowModal;
end;

procedure TFormPrincipal.AbaConLogsMouseEnter(Sender: TObject);
begin
AbaConLogs.color:=clMedGray;
AbaConLogs.Repaint;
end;

procedure TFormPrincipal.AbaConLogsMouseLeave(Sender: TObject);
begin
AbaConLogs.color:=$005B5B5B;
AbaConLogs.Repaint;
end;

procedure TFormPrincipal.AbaConProdutoClick(Sender: TObject);
begin
FormConsultaProd:=TFormConsultaProd.Create(self);
DataModule1.ADOQueryConsultaProduto.Close;
DataModule1.ADOQueryConsultaProduto.Open;
FormConsultaProd.ShowModal;
end;

procedure TFormPrincipal.AbaConProdutoMouseEnter(Sender: TObject);
begin
AbaConProduto.color:=clMedGray;
AbaConProduto.Repaint;
end;

procedure TFormPrincipal.AbaConProdutoMouseLeave(Sender: TObject);
begin
AbaConProduto.color:=$005B5B5B;
AbaConProduto.Repaint;
end;

procedure TFormPrincipal.AbaConsultarClick(Sender: TObject);
begin
Panel3.Visible:=False;
AbaPosConsulta.Visible:=True;
AbaPosConsulta.Align:=alLeft;
end;

procedure TFormPrincipal.AbaConsultarMouseEnter(Sender: TObject);
begin
AbaConsultar.Color:=clMedGray;
AbaConsultar.Repaint;
end;

procedure TFormPrincipal.AbaConsultarMouseLeave(Sender: TObject);
begin
AbaConsultar.color:=$005B5B5B;
AbaConsultar.Repaint;
end;

procedure TFormPrincipal.AbaConUsuarioClick(Sender: TObject);
begin
FormConsultaUsuarios:=TFormConsultaUsuarios.Create(self);
DataModule1.ADOQueryConsultaUsuario.Close;
DataModule1.ADOQueryConsultaUsuario.Open;
FormConsultaUsuarios.ShowModal;
end;

procedure TFormPrincipal.AbaConUsuarioMouseEnter(Sender: TObject);
begin
AbaConUsuario.color:=clMedGray;
AbaConUsuario.Repaint;
end;

procedure TFormPrincipal.AbaConUsuarioMouseLeave(Sender: TObject);
begin
AbaConUsuario.color:=$005B5B5B;
AbaConUsuario.Repaint;
end;

procedure TFormPrincipal.AbaFornecedorClick(Sender: TObject);
begin
FormFornecedor:=TFormFornecedor.Create(self);
FormFornecedor.ShowModal;
end;

procedure TFormPrincipal.AbaFornecedorMouseEnter(Sender: TObject);
begin
AbaFornecedor.color:=clMedGray;
AbaFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaFornecedorMouseLeave(Sender: TObject);
begin
AbaFornecedor.color:=$005B5B5B;
AbaFornecedor.Repaint;
end;

procedure TFormPrincipal.AbaBackupClick(Sender: TObject);
begin
FormBackup:=TFormBackup.Create(Self);
FormBackup.ShowModal;
end;

procedure TFormPrincipal.AbaBackupMouseEnter(Sender: TObject);
begin
AbaBackup.color:=clMedGray;
AbaBackup.Repaint;

end;

procedure TFormPrincipal.AbaBackupMouseLeave(Sender: TObject);
begin
AbaBackup.color:=$005B5B5B;
AbaBackup.Repaint;

end;

procedure TFormPrincipal.AbaCadastroClick(Sender: TObject);
begin
Panel3.Visible:=False;
AbaPosCadastro.Visible:=True;
AbaPosCadastro.Align:=alLeft;
end;

procedure TFormPrincipal.AbaCadastroMouseEner(Sender: TObject);
begin
AbaCadastro.color:=clMedGray;
AbaCadastro.Repaint;
end;

procedure TFormPrincipal.AbaCadastroMouseLeave(Sender: TObject);
begin
AbaCadastro.color:=$005B5B5B;
AbaCadastro.Repaint;

end;

procedure TFormPrincipal.AbaCategoriaClick(Sender: TObject);
begin
FormCategoria:=TFormCategoria.Create(self);
FormCategoria.ShowModal;
end;

procedure TFormPrincipal.AbaCategoriaMouseEnter(Sender: TObject);
begin
AbaCategoria.color:=clMedGray;
AbaCategoria.Repaint;
end;

procedure TFormPrincipal.AbaCategoriaMouseLeave(Sender: TObject);
begin
AbaCategoria.color:=$005B5B5B;
AbaCategoria.Repaint;
end;

procedure TFormPrincipal.AbaCidadeClick(Sender: TObject);
begin
FormCidade:=TFormCidade.Create(self);
FormCidade.ShowModal;
end;

procedure TFormPrincipal.AbaCidadeMouseEnter(Sender: TObject);
begin
AbaCidade.color:=clMedGray;
AbaCidade.Repaint;
end;

procedure TFormPrincipal.AbaCidadeMouseLeave(Sender: TObject);
begin
AbaCidade.color:=$005B5B5B;
AbaCidade.Repaint;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
var tempo:string;
begin
tempo:=FormatDateTime('hh:mm',time);
Panel4.Caption:=(tempo);
end;

procedure TFormPrincipal.Timer2Timer(Sender: TObject);
begin
ADOQueryMesas.Refresh;
DBCtrlGrid1.Refresh;
DBCtrlGrid1.Repaint;

end;

procedure GravaLog(acao:string);
var SQL:string;
begin
SQL:='INSERT INTO tbl_logs (tbl_usuarios_id_usuarios, acao_log)';
SQL:= SQL+'VALUES ('+IntToStr(UsuarioCodigo)+','+QuotedStr(acao)+')';
DataModule1.ADOQueryLog.Close;
DataModule1.ADOQueryLog.SQL.Clear;
DataModule1.ADOQueryLog.SQL.Add(SQL);
DataModule1.ADOQueryLog.ExecSQL;


end;


end.

