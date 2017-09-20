unit UnitDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, frxClass, frxDBSet;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTableCliente: TADOTable;
    ADOTableClienteid_cliente: TAutoIncField;
    ADOTableClientenome_cliente: TStringField;
    ADOTableClientecpf_cliente: TStringField;
    ADOTableClienterg_cliente: TStringField;
    ADOTableClienteend_cliente: TStringField;
    ADOTableClienteend_n_cliente: TStringField;
    ADOTableClienteend_b_cliente: TStringField;
    ADOTableClientecep_cliente: TStringField;
    ADOTableClientetelefone_cliente: TStringField;
    ADOTableClientedatanasc: TDateField;
    ADOTableClienteobs: TStringField;
    ADOTableClientetbl_cidade_id_cidade: TIntegerField;
    ADOTableCidade: TADOTable;
    ADOTableCidadeid_cidade: TAutoIncField;
    ADOTableCidadenome_cidade: TStringField;
    ADOTableCidadeestado_cidade: TStringField;
    ADOTableFornecedor: TADOTable;

    ADOTableUsuario: TADOTable;
    ADOTableUsuarioid_usuarios: TAutoIncField;
    ADOTableUsuariologin_usuario: TStringField;
    ADOTableUsuariosenha_usuario: TStringField;
    ADOTableUsuariotipo: TStringField;
    ADOQueryConsultaCliente: TADOQuery;
    ADOQueryConsultaCidades: TADOQuery;
    ADOQueryConsultaUsuario: TADOQuery;
    ADOQueryConsultaFornecedor: TADOQuery;
    ADOTableFornecedorid_fornecedor: TAutoIncField;
    ADOTableFornecedorrazaosocial: TStringField;
    ADOTableFornecedornome_contato: TStringField;
    ADOTableFornecedortel_fornecedor: TStringField;
    ADOTableFornecedorcnpjcpf_fornecedor: TStringField;
    ADOTableFornecedorobservacao: TStringField;
    ADOTableFornecedorie_fornecedor: TStringField;
    ADOTableFornecedorend_fornecedor: TStringField;
    ADOTableFornecedorend_n_fornecedor: TStringField;
    ADOTableFornecedorend_b_fornecedor: TStringField;
    ADOTableFornecedortbl_cidade_id_cidade: TIntegerField;
    ADOQueryLog: TADOQuery;
    ADOQueryConsultaLogs: TADOQuery;
    ADOTableUsuarionome_usuario: TStringField;
    ADOTableProduto: TADOTable;
    ADOQueryConsultaProduto: TADOQuery;
    ADOTableVendas: TADOTable;
    ADOTableMesa: TADOTable;
    ADOTableCategoria: TADOTable;
    ADOQueryConsultaCategoria: TADOQuery;
    ADOTableVendasid_vendas: TAutoIncField;
    ADOTableVendasdata_venda: TDateTimeField;
    ADOTableVendastotal_item_produto: TFloatField;
    ADOTableVendasdesconto: TFloatField;
    ADOTableVendasporcentagem_garcon: TFloatField;
    ADOTableVendastotal_final: TFloatField;
    ADOTableVendasativo: TStringField;
    ADOTableVendastbl_cliente_id_cliente: TIntegerField;
    ADOTableVendastbl_mesa_id_mesa: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDatasetCCliente: TfrxDBDataset;
    ADOTableCategoriaid_categoria: TAutoIncField;
    ADOTableCategoriacategoria: TStringField;
    ADOTableCategoriaTipo: TStringField;
    ADOTableMesaid_mesa: TAutoIncField;
    ADOTableMesaocupada: TStringField;
    ADOTableMesalocal: TStringField;
    ADOTableProdutoid_produto: TAutoIncField;
    ADOTableProdutonome_produto: TStringField;
    ADOTableProdutoativo: TStringField;
    ADOTableProdutoquantidade: TIntegerField;
    ADOTableProdutopreco: TFloatField;
    ADOTableProdutocob_barra: TStringField;
    ADOTableProdutotbl_categoria_id_categoria: TIntegerField;
    frxDBDatasetCFornecedor: TfrxDBDataset;
    frxDBDatasetCLogs: TfrxDBDataset;
    frxDBDatasetCCategoria: TfrxDBDataset;
    frxDBDatasetCProduto: TfrxDBDataset;
    frxDBDatasetCCidades: TfrxDBDataset;
    ADOQueryConsultaProdutoid_produto: TIntegerField;
    ADOQueryConsultaProdutonome_produto: TStringField;
    ADOQueryConsultaProdutoativo: TStringField;
    ADOQueryConsultaProdutoquantidade: TIntegerField;
    ADOQueryConsultaProdutopreco: TFloatField;
    ADOQueryConsultaProdutocob_barra: TStringField;
    ADOQueryConsultaProdutotbl_categoria_id_categoria: TIntegerField;
    ADOQueryConsultaProdutoid_categoria: TIntegerField;
    ADOQueryConsultaProdutocategoria: TStringField;
    ADOQueryConsultaProdutotipo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
