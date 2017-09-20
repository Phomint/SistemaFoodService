program SistemaFoodService;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCliente in 'UnitCliente.pas' {FormCliente},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitCidade in 'UnitCidade.pas' {FormCidade},
  UnitFornecedor in 'UnitFornecedor.pas' {FormFornecedor},
  UnitUsuario in 'UnitUsuario.pas' {FormUsuario},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitAviso in 'UnitAviso.pas' {FormAviso},
  UnitConsultaProduto in 'UnitConsultaProduto.pas' {FormConsultaProd},
  UnitConsultaCliente in 'UnitConsultaCliente.pas' {FormConulstaCliente},
  UnitConsultaCidades in 'UnitConsultaCidades.pas' {FormConsultaCidades},
  UnitConsultaUsuarios in 'UnitConsultaUsuarios.pas' {FormConsultaUsuarios},
  UnitConsultaFornecedor in 'UnitConsultaFornecedor.pas' {FormConsultaFornecedor},
  UnitSplash in 'UnitSplash.pas' {FormSplash},
  UnitConsultaLogs in 'UnitConsultaLogs.pas' {FormConsultaLogs},
  UnitProduto in 'UnitProduto.pas' {FormProduto},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitCategoria in 'UnitCategoria.pas' {FormCategoria},
  UnitMesas in 'UnitMesas.pas' {FormMesas},
  UnitAvisoConclusao in 'UnitAvisoConclusao.pas' {FormAvisoConclusao},
  UnitBackup in 'UnitBackup.pas' {FormBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormMesas, FormMesas);
  Application.CreateForm(TFormAvisoConclusao, FormAvisoConclusao);
  Application.CreateForm(TFormBackup, FormBackup);
  Application.Run;
end.
