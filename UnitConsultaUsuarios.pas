unit UnitConsultaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConsultaUsuarios = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaUsuarios: TFormConsultaUsuarios;

implementation

{$R *.dfm}

uses UnitDataModule, UnitUsuario;

procedure TFormConsultaUsuarios.DBGrid1DblClick(Sender: TObject);
begin
DataModule1.ADOTableUsuario.Locate('id_usuario', DBGrid1.Fields[0].Value,[loCaseInsensitive,loPartialKey]);
FormUsuario:=TFormUsuario.Create(self);
FormUsuario.Show;
FormConsultaUsuarios.Close;
end;

procedure TFormConsultaUsuarios.Edit1Change(Sender: TObject);
begin

with DataModule1.ADOQueryConsultaUsuario do

begin

SQL[2]:='WHERE login_usuario like "%'+edit1.Text+'%"';

open;

end;

end;

procedure TFormConsultaUsuarios.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaUsuarios.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormConsultaUsuarios.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
