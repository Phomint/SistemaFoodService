unit UnitConsultaLogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConsultaLogs = class(TForm)
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaLogs: TFormConsultaLogs;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFormConsultaLogs.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked) then
DateTimePicker2.Enabled:=False
else
DateTimePicker2.Enabled:=True;

end;


procedure TFormConsultaLogs.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaLogs.SpeedButton1Click(Sender: TObject);
begin
with DataModule1.ADOQueryConsultaLogs do

begin

if active then close;

if (DateTimePicker2.Enabled) then

begin

sql[5]:='and data_log BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd 00:00:00', DateTimePicker1.Date));
sql[6]:='and '+QuotedStr(FormatDateTime('yyyy-mm-dd 23:59:59',DateTimePicker2.Date));
end
else
begin

sql[5]:='and data_log >='+QuotedStr(FormatDateTime('yyyy-mm-dd 00:00:00', DateTimePicker1.Date));
sql[6]:='and data_log <='+QuotedStr(FormatDateTime('yyyy-mm-dd 23:59:59', DateTimePicker1.Date));

end;

if(ComboBox1.ItemIndex=0) then

begin

if (ComboBox1.ItemIndex=0) then
sql[4]:='and acao_log LIKE "%'+Edit1.Text+'%"';
if (ComboBox1.ItemIndex=1) then
sql[4]:='and nome_usuario LIKE "%'+Edit1.Text+'%"';
if (ComboBox1.ItemIndex=2) then
SQL[4]:='and login_usuario LIKE "%'+Edit1.Text+'%"';


end
else

sql[4]:='and acao_log LIKE "%'+Edit1.Text+'%"';

open;

end;



end;

end.


