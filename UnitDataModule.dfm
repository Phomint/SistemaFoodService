object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 574
  Width = 787
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=db_sistemafs8;Initial Catalog=db_sistemafs8'
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object ADOTableCliente: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_cliente'
    Left = 48
    Top = 136
    object ADOTableClienteid_cliente: TAutoIncField
      FieldName = 'id_cliente'
      ReadOnly = True
    end
    object ADOTableClientenome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 45
    end
    object ADOTableClientecpf_cliente: TStringField
      FieldName = 'cpf_cliente'
      EditMask = '999.999.999-99'
      FixedChar = True
      Size = 14
    end
    object ADOTableClienterg_cliente: TStringField
      FieldName = 'rg_cliente'
      Size = 15
    end
    object ADOTableClienteend_cliente: TStringField
      FieldName = 'end_cliente'
      Size = 45
    end
    object ADOTableClienteend_n_cliente: TStringField
      FieldName = 'end_n_cliente'
      Size = 6
    end
    object ADOTableClienteend_b_cliente: TStringField
      FieldName = 'end_b_cliente'
      Size = 15
    end
    object ADOTableClientecep_cliente: TStringField
      FieldName = 'cep_cliente'
      EditMask = '99999-999'
      FixedChar = True
      Size = 9
    end
    object ADOTableClientetelefone_cliente: TStringField
      FieldName = 'telefone_cliente'
      EditMask = '!\(99\)0000-0000;1;_'
      FixedChar = True
      Size = 13
    end
    object ADOTableClientedatanasc: TDateField
      FieldName = 'datanasc'
      EditMask = '!99/99/00;1;_'
    end
    object ADOTableClienteobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object ADOTableClientetbl_cidade_id_cidade: TIntegerField
      FieldName = 'tbl_cidade_id_cidade'
    end
  end
  object ADOTableCidade: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_cidade'
    Left = 144
    Top = 136
    object ADOTableCidadeid_cidade: TAutoIncField
      FieldName = 'id_cidade'
      ReadOnly = True
    end
    object ADOTableCidadenome_cidade: TStringField
      FieldName = 'nome_cidade'
      Size = 45
    end
    object ADOTableCidadeestado_cidade: TStringField
      FieldName = 'estado_cidade'
      FixedChar = True
      Size = 2
    end
  end
  object ADOTableFornecedor: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_fornecedor'
    Left = 248
    Top = 136
    object ADOTableFornecedorid_fornecedor: TAutoIncField
      FieldName = 'id_fornecedor'
      ReadOnly = True
    end
    object ADOTableFornecedorrazaosocial: TStringField
      FieldName = 'razaosocial'
      Size = 45
    end
    object ADOTableFornecedornome_contato: TStringField
      FieldName = 'nome_contato'
      Size = 45
    end
    object ADOTableFornecedortel_fornecedor: TStringField
      FieldName = 'tel_fornecedor'
      EditMask = '!\(99\)0000-0000;1;_'
      FixedChar = True
      Size = 13
    end
    object ADOTableFornecedorcnpjcpf_fornecedor: TStringField
      FieldName = 'cnpjcpf_fornecedor'
      EditMask = '99.999.999/9999-99'
    end
    object ADOTableFornecedorobservacao: TStringField
      FieldName = 'observacao'
      Size = 100
    end
    object ADOTableFornecedorie_fornecedor: TStringField
      FieldName = 'ie_fornecedor'
      EditMask = '999.999.999.999'
    end
    object ADOTableFornecedorend_fornecedor: TStringField
      FieldName = 'end_fornecedor'
      Size = 45
    end
    object ADOTableFornecedorend_n_fornecedor: TStringField
      FieldName = 'end_n_fornecedor'
      Size = 6
    end
    object ADOTableFornecedorend_b_fornecedor: TStringField
      FieldName = 'end_b_fornecedor'
      Size = 15
    end
    object ADOTableFornecedortbl_cidade_id_cidade: TIntegerField
      FieldName = 'tbl_cidade_id_cidade'
    end
  end
  object ADOTableUsuario: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_usuarios'
    Left = 440
    Top = 136
    object ADOTableUsuarioid_usuarios: TAutoIncField
      FieldName = 'id_usuarios'
      ReadOnly = True
    end
    object ADOTableUsuariologin_usuario: TStringField
      FieldName = 'login_usuario'
      Size = 45
    end
    object ADOTableUsuariosenha_usuario: TStringField
      FieldName = 'senha_usuario'
      Size = 45
    end
    object ADOTableUsuariotipo: TStringField
      FieldName = 'tipo'
      Size = 45
    end
    object ADOTableUsuarionome_usuario: TStringField
      FieldName = 'nome_usuario'
      Size = 50
    end
  end
  object ADOQueryConsultaCliente: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'tbl_cliente'
      'Inner join tbl_cidade'
      'on id_cidade = tbl_cidade_id_cidade'
      'WHERE id_cliente>0'
      'ORDER BY nome_cliente asc')
    Left = 144
    Top = 232
  end
  object ADOQueryConsultaCidades: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'tbl_cidade'
      'WHERE id_cidade>0'
      'ORDER BY nome_cidade asc')
    Left = 272
    Top = 376
  end
  object ADOQueryConsultaUsuario: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'tbl_usuarios'
      'WHERE id_usuarios>0')
    Left = 416
    Top = 240
  end
  object ADOQueryConsultaFornecedor: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '
      'tbl_fornecedor'
      'inner join tbl_cidade'
      'on id_cidade=tbl_cidade_id_cidade'
      'where id_fornecedor>0'
      'ORDER BY razaosocial asc')
    Left = 280
    Top = 240
  end
  object ADOQueryLog: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * From '
      'tbl_logs'
      'inner join tbl_usuarios'
      'on id_usuarios=tbl_usuarios_id_usuarios'
      'where id_log>0')
    Left = 40
    Top = 232
  end
  object ADOQueryConsultaLogs: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tbl_logs.*,login_usuario,nome_usuario'
      'FROM tbl_logs,tbl_usuarios'
      'WHERE (tbl_usuarios_id_usuarios=id_usuarios)'
      'and (acao_log LIKE '#39'% %'#39')'
      'and (tbl_usuarios_id_usuarios>=1)'
      'and (data_log > '#39'2015-01-01'#39')'
      'and (data_log < '#39'2050-12-30'#39')'
      'ORDER BY id_log ASC')
    Left = 64
    Top = 288
  end
  object ADOTableProduto: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_produto'
    Left = 352
    Top = 136
    object ADOTableProdutoid_produto: TAutoIncField
      FieldName = 'id_produto'
      ReadOnly = True
    end
    object ADOTableProdutonome_produto: TStringField
      FieldName = 'nome_produto'
      Size = 45
    end
    object ADOTableProdutoativo: TStringField
      FieldName = 'ativo'
      Size = 5
    end
    object ADOTableProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object ADOTableProdutopreco: TFloatField
      FieldName = 'preco'
      currency = True
    end
    object ADOTableProdutocob_barra: TStringField
      FieldName = 'cob_barra'
      Size = 45
    end
    object ADOTableProdutotbl_categoria_id_categoria: TIntegerField
      FieldName = 'tbl_categoria_id_categoria'
    end
  end
  object ADOQueryConsultaProduto: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'tbl_produto'
      'inner join tbl_categoria'
      'on id_categoria=tbl_categoria_id_categoria'
      'WHERE id_produto>0'
      '')
    Left = 160
    Top = 336
    object ADOQueryConsultaProdutoid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object ADOQueryConsultaProdutonome_produto: TStringField
      FieldName = 'nome_produto'
      Size = 45
    end
    object ADOQueryConsultaProdutoativo: TStringField
      FieldName = 'ativo'
      Size = 5
    end
    object ADOQueryConsultaProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object ADOQueryConsultaProdutopreco: TFloatField
      FieldName = 'preco'
      currency = True
    end
    object ADOQueryConsultaProdutocob_barra: TStringField
      FieldName = 'cob_barra'
      Size = 45
    end
    object ADOQueryConsultaProdutotbl_categoria_id_categoria: TIntegerField
      FieldName = 'tbl_categoria_id_categoria'
    end
    object ADOQueryConsultaProdutoid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object ADOQueryConsultaProdutocategoria: TStringField
      FieldName = 'categoria'
      Size = 45
    end
    object ADOQueryConsultaProdutotipo: TStringField
      FieldName = 'tipo'
      Size = 45
    end
  end
  object ADOTableVendas: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_vendas'
    Left = 520
    Top = 136
    object ADOTableVendasid_vendas: TAutoIncField
      FieldName = 'id_vendas'
      ReadOnly = True
    end
    object ADOTableVendasdata_venda: TDateTimeField
      FieldName = 'data_venda'
    end
    object ADOTableVendastotal_item_produto: TFloatField
      FieldName = 'total_item_produto'
    end
    object ADOTableVendasdesconto: TFloatField
      FieldName = 'desconto'
    end
    object ADOTableVendasporcentagem_garcon: TFloatField
      FieldName = 'porcentagem_garcon'
    end
    object ADOTableVendastotal_final: TFloatField
      FieldName = 'total_final'
    end
    object ADOTableVendasativo: TStringField
      FieldName = 'ativo'
      Size = 5
    end
    object ADOTableVendastbl_cliente_id_cliente: TIntegerField
      FieldName = 'tbl_cliente_id_cliente'
    end
    object ADOTableVendastbl_mesa_id_mesa: TIntegerField
      FieldName = 'tbl_mesa_id_mesa'
    end
  end
  object ADOTableMesa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_mesa'
    Left = 600
    Top = 136
    object ADOTableMesaid_mesa: TAutoIncField
      FieldName = 'id_mesa'
      ReadOnly = True
    end
    object ADOTableMesaocupada: TStringField
      FieldName = 'ocupada'
      Size = 5
    end
    object ADOTableMesalocal: TStringField
      FieldName = 'local'
      Size = 45
    end
  end
  object ADOTableCategoria: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_categoria'
    Left = 680
    Top = 136
    object ADOTableCategoriaid_categoria: TAutoIncField
      FieldName = 'id_categoria'
      ReadOnly = True
    end
    object ADOTableCategoriacategoria: TStringField
      FieldName = 'categoria'
      Size = 45
    end
    object ADOTableCategoriaTipo: TStringField
      FieldName = 'Tipo'
      Size = 45
    end
  end
  object ADOQueryConsultaCategoria: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '
      'tbl_categoria'
      'Where id_categoria>0'
      'ORDER BY categoria asc')
    Left = 368
    Top = 312
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42167.880662824100000000
    ReportOptions.LastChange = 42167.881707303240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 560
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDatasetCLogs
        DataSetName = 'frxDBDatasetCLogs'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Logs')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 195.865841840000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 195.865841840000000000
          Width = 179.849333600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 375.715175440000000000
          Width = 255.356541570000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'A'#231#227'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 631.071717010000000000
          Width = 87.038519210000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetCLogs
        DataSetName = 'frxDBDatasetCLogs'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 195.865841836201000000
          Height = 18.897650000000000000
          DataField = 'nome_usuario'
          DataSet = frxDBDatasetCLogs
          DataSetName = 'frxDBDatasetCLogs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetCLogs."nome_usuario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 195.865841836201000000
          Width = 179.849333603007000000
          Height = 18.897650000000000000
          DataField = 'login_usuario'
          DataSet = frxDBDatasetCLogs
          DataSetName = 'frxDBDatasetCLogs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetCLogs."login_usuario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 375.715175439208000000
          Width = 255.356541570479000000
          Height = 18.897650000000000000
          DataField = 'acao_log'
          DataSet = frxDBDatasetCLogs
          DataSetName = 'frxDBDatasetCLogs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetCLogs."acao_log"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 631.071717009687000000
          Width = 87.038519210785100000
          Height = 18.897650000000000000
          DataField = 'data_log'
          DataSet = frxDBDatasetCLogs
          DataSetName = 'frxDBDatasetCLogs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetCLogs."data_log"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDatasetCCliente: TfrxDBDataset
    UserName = 'frxDBDatasetCCliente'
    CloseDataSource = False
    DataSet = ADOQueryConsultaCliente
    BCDToCurrency = False
    Left = 672
    Top = 208
  end
  object frxDBDatasetCFornecedor: TfrxDBDataset
    UserName = 'frxDBDatasetCFornecedor'
    CloseDataSource = False
    DataSet = ADOQueryConsultaFornecedor
    BCDToCurrency = False
    Left = 672
    Top = 256
  end
  object frxDBDatasetCLogs: TfrxDBDataset
    UserName = 'frxDBDatasetCLogs'
    CloseDataSource = False
    DataSet = ADOQueryConsultaLogs
    BCDToCurrency = False
    Left = 672
    Top = 304
  end
  object frxDBDatasetCCategoria: TfrxDBDataset
    UserName = 'frxDBDatasetCCategoria'
    CloseDataSource = False
    DataSet = ADOQueryConsultaCategoria
    BCDToCurrency = False
    Left = 672
    Top = 360
  end
  object frxDBDatasetCProduto: TfrxDBDataset
    UserName = 'frxDBDatasetCProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_produto=id_produto'
      'nome_produto=nome_produto'
      'ativo=ativo'
      'quantidade=quantidade'
      'preco=preco'
      'cob_barra=cob_barra'
      'tbl_categoria_id_categoria=tbl_categoria_id_categoria'
      'id_categoria=id_categoria'
      'categoria=categoria'
      'tipo=tipo')
    DataSet = ADOQueryConsultaProduto
    BCDToCurrency = False
    Left = 672
    Top = 416
  end
  object frxDBDatasetCCidades: TfrxDBDataset
    UserName = 'frxDBDatasetCCidades'
    CloseDataSource = False
    DataSet = ADOQueryConsultaCidades
    BCDToCurrency = False
    Left = 672
    Top = 472
  end
end
