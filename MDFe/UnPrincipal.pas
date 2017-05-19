unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtDlgs, Datasnap.DBClient, COMOBJ, SHELLAPI,
  Vcl.Buttons, frxClass, frxDBSet, Datasnap.Provider;

type
  TForPrincipal = class(TForm)
    ADOConnection1: TADOConnection;
    Panel1: TPanel;
    Panel2: TPanel;
    DSCarga: TADODataSet;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    QCarga: TADOQuery;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Relatrio1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Novo1: TMenuItem;
    Fechar1: TMenuItem;
    VendedoresCadastrado1: TMenuItem;
    ConsultaporData1: TMenuItem;
    HistricoporVendedor1: TMenuItem;
    SaldoporVendedor1: TMenuItem;
    N1: TMenuItem;
    GeradordeRelatrio1: TMenuItem;
    Sistema1: TMenuItem;
    Verso1: TMenuItem;
    Usarios1: TMenuItem;
    Panel3: TPanel;
    EditIdmov: TEdit;
    EditPeso: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    OpenDialog1: TOpenDialog;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    BtSair: TImage;
    SpeedButton1: TSpeedButton;
    Fastgerador: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QueryRel: TADOQuery;
    SpeedButton2: TSpeedButton;
    QBonigerar: TADOQuery;
    DSBonigerar: TADODataSet;
    TableBoni: TADOTable;
    detalhesu: TADOQuery;
    PopupMenu1: TPopupMenu;
    Importar1: TMenuItem;
    ProgressBar1: TProgressBar;
    pvQBonigerar: TDataSetProvider;
    cdsBonigerar: TClientDataSet;
    QBonigerarIten: TADOQuery;
    pvBonigerarIten: TDataSetProvider;
    cdsBonigerarIten: TClientDataSet;
    dsBonigerarvendas: TDataSource;
    TableBoniIDBONI: TAutoIncField;
    TableBoniIDPRDB: TIntegerField;
    TableBoniDESCPRODUTO: TStringField;
    TableBoniQUANTIDADEB: TIntegerField;
    TableBoniCODUNDB: TStringField;
    TableBoniVALORITEM1: TBCDField;
    TableBoniVALORITEM2: TBCDField;
    TableBoniVALORITEM3: TBCDField;
    TableBoniVALORITEM4: TBCDField;
    TableBoniVALORITEM5: TBCDField;
    TableBoniVALORITEMVEND: TBCDField;
    TableBoniCODCPGB: TStringField;
    TableBoniHISTORICOB: TStringField;
    TableBoniDATAVENDA: TStringField;
    TableBoniCODCFOB: TStringField;
    TableBoniCODVEN1B: TStringField;
    TableBoniVALORTOTAL: TStringField;
    TableBoniTIPOOPERACAO: TStringField;
    TableBoniSALDOANTERIOR: TStringField;
    TableBoniSALDOPOSTERIOR: TStringField;
    TableBoniNUMEROMOVB: TStringField;
    TableBoniSTATUSB: TStringField;
    TableBoniDATAEXTRA1B: TDateTimeField;
    TableBoniDATAEXTRA2B: TDateTimeField;
    TableBoniCOMISSAOREPRESB: TBCDField;
    TableBoniVALOROUTROSB: TBCDField;
    TableBoniVALORDESCB: TBCDField;
    TableBoniVALORDESPB: TBCDField;
    TableBoniVALOREXTRA2B: TBCDField;
    TableBoniCODTB1FATB: TStringField;
    TableBoniCODTB2FATB: TStringField;
    TableBoniCODTB3FATB: TStringField;
    TableBoniCODTB4FATB: TStringField;
    TableBoniCODTB5FATB: TStringField;
    TableBoniCODTB1FLXB: TStringField;
    TableBoniCODTB2FLXB: TStringField;
    TableBoniCODTB3FLXB: TStringField;
    TableBoniCODTB4FLXB: TStringField;
    TableBoniCODTB5FLXB: TStringField;
    TableBoniDATABASEMOVB: TDateTimeField;
    TableBoniDATAMOVIMENTOB: TDateTimeField;
    TableBoniCODUSUARIOB: TStringField;
    TableBoniCAMPOLIVRE1B: TStringField;
    TableBoniCAMPOLIVRE2B: TStringField;
    TableBoniCAMPOLIVRE3B: TStringField;
    TableBoniNUMEROEXTRA1: TIntegerField;
    TableBoniNUMEROEXTRA2: TIntegerField;
    TableBoniDATACRIACAOB: TDateTimeField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    dsBonigeraritens: TDataSource;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Image1: TImage;
    tbteste: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TabSheet3: TTabSheet;
    strGridVenda: TStringGrid;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SGFonte: TStringGrid;
    Image7: TImage;
    StringGridItens: TStringGrid;
    ADOQuery1: TADOQuery;
    QueryRelIDITEN: TAutoIncField;
    QueryRelCODPRD: TStringField;
    QueryRelQUANTIDADE: TStringField;
    QueryRelVALORITEMVEND: TStringField;
    QueryRelVALORTABELA: TStringField;
    QueryRelDATAVENDA: TStringField;
    QueryRelNUMEROVEND: TStringField;
    QueryRelCODCFO: TStringField;
    QueryRelCODVEN1: TStringField;
    QueryRelCODCFOB: TStringField;
    QueryRelCODTB1FLX: TStringField;
    QBonigerarItenNUMEROVEND: TStringField;
    QBonigerarItenCODPRD: TStringField;
    QBonigerarItenNUMEROVEND_1: TStringField;
    QBonigerarItenCODCFOB: TStringField;
    QBonigerarItenCODVEN1: TStringField;
    QBonigerarItenQUANTIDADE: TStringField;
    QBonigerarItenDATAVENDA: TDateTimeField;
    QBonigerarItenVALORITEMVEND: TBCDField;
    QBonigerarItenVALORTABELA: TBCDField;
    QBonigerarItenCODTB1FLX: TStringField;
    QBonigerarItenDATACRIACAO: TDateTimeField;
    cdsBonigerarItenNUMEROVEND: TStringField;
    cdsBonigerarItenCODPRD: TStringField;
    cdsBonigerarItenNUMEROVEND_1: TStringField;
    cdsBonigerarItenCODCFOB: TStringField;
    cdsBonigerarItenCODVEN1: TStringField;
    cdsBonigerarItenQUANTIDADE: TStringField;
    cdsBonigerarItenDATAVENDA: TDateTimeField;
    cdsBonigerarItenVALORITEMVEND: TBCDField;
    cdsBonigerarItenVALORTABELA: TBCDField;
    cdsBonigerarItenCODTB1FLX: TStringField;
    cdsBonigerarItenDATACRIACAO: TDateTimeField;
    QBonigerarNUMEROMOVB: TStringField;
    QBonigerarCODVEN1B: TStringField;
    QBonigerarCODCPGB: TStringField;
    QBonigerarHISTORICOB: TStringField;
    QBonigerarDATAVENDA: TDateTimeField;
    QBonigerarCODCFOB: TStringField;
    QBonigerarVALORTOTAL: TBCDField;
    QBonigerarTIPOOPERACAO: TStringField;
    QBonigerarSALDOANTERIOR: TBCDField;
    QBonigerarSALDOPOSTERIOR: TBCDField;
    QBonigerarDATACRIACAOB: TDateTimeField;
    cdsBonigerarNUMEROMOVB: TStringField;
    cdsBonigerarCODVEN1B: TStringField;
    cdsBonigerarCODCPGB: TStringField;
    cdsBonigerarHISTORICOB: TStringField;
    cdsBonigerarDATAVENDA: TDateTimeField;
    cdsBonigerarCODCFOB: TStringField;
    cdsBonigerarVALORTOTAL: TBCDField;
    cdsBonigerarTIPOOPERACAO: TStringField;
    cdsBonigerarSALDOANTERIOR: TBCDField;
    cdsBonigerarSALDOPOSTERIOR: TBCDField;
    cdsBonigerarDATACRIACAOB: TDateTimeField;
    StringGridItensTitulo: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditIdmovKeyPress(Sender: TObject; var Key: Char);
    procedure EditPesoKeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConsultaporData1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure Verso1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure strGridVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure strGridVendaDblClick(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure strGridVendaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure strGridVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btgeraritensClick(Sender: TObject);
    procedure tbtesteClick(Sender: TObject);
    procedure SGItensDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Usarios1Click(Sender: TObject);

  private
    function SoCaracteresPermitidos(s: string): string;
    function tira_espaco(x: String): String; export;
    procedure ExecSQL(sql: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForPrincipal: TForPrincipal;
  mIdBonificacao,
  mCodigoPag,
  mHistorico,
  mDataVenda,
  mCodCliente,
  mCodVendedor,
  mValorTotal,
  mTipoOperacao,
  mSaldoAnterior,
  mSaldo,
  mTIPOREG2,
  mCOD_OCOR2,
  mFAV2,
  mValorV : string;
  Sqlquery: TADOQuery;
  vArquivo: TextFile;
  Arquivo : String;
  Bi,xb :Integer;
  vImportar: Boolean;
  vLinha: String;

implementation

{$R *.dfm}

uses UnSobre, UnVersao, RelBoniVend, VendasVO, UnControle, UnUsuario, UAcesso;


procedure TForPrincipal.Button1Click(Sender: TObject);
begin
  If EditIdmov.text = ''  then
  begin showmessage('Por favor, digite algum valor no Identificador de Movimento'); abort;
  end;
    begin
    If EditPeso.text = ''  then
      begin showmessage('Por favor, digite algum valor no Peso'); abort;
      end;
        begin
        if (MessageDlg('Deseja Atualizar Movimento n� ' +EditIdmov.text +' Com Peso de ' +EditPeso.Text, MtConfirmation, [mbYes,mbNo] , 0)= MrYes) then
          begin
          //PESO LIQUIDO
          QCarga.Close;
          QCarga.SQL.Clear;
          QCarga.SQL.Add ('UPDATE TMOV SET PESOLIQUIDO=:peso');
          QCarga.SQL.Add ('WHERE IDMOV=:mov');
          QCarga.Parameters.ParamByName ('peso').Value := EditPeso.Text;
          QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
          QCarga.ExecSQL;
          //PESO PRUTO
          QCarga.SQL.Clear;
          QCarga.SQL.Add ('UPDATE TMOV SET PESOBRUTO=:peso');
          QCarga.SQL.Add ('WHERE IDMOV=:mov');
          QCarga.Parameters.ParamByName ('peso').Value := EditPeso.Text;
          QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
          QCarga.ExecSQL;
          //CIDADES ESTADOS
          QCarga.SQL.Clear;
          QCarga.SQL.Add ('UPDATE TCTRC SET CODETDCOLETA=''GO'',CODMUNICIPIOCOLETA=17104,CODMUNICIPIOENTREGA=CODMUNICIPIO,CODETDENTREGA=UF');
          QCarga.SQL.Add ('WHERE IDMOV=:mov');
          QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
          QCarga.ExecSQL;
          EditIdmov.Clear;
          EditPeso.Clear;
          EditIdmov.SetFocus;
          Showmessage ('Atualiza��o Realizada com Sucesso');
          end else
          Showmessage ('Atualiza��o Cancelada');
      end;
  end;
end;
procedure TForPrincipal.tbtesteClick(Sender: TObject);
var vRowstrGrid,lin,col,Cont:Integer;
vArquivo:TextFile;
vLinha,mTIPOREG2, mCOD_OCOR2, mFAV2,  mValorV:string;
vIRowstrGrid: integer;
ilin,dan: Integer;

begin
vRowstrGrid :=1;
viRowstrGrid :=1;
for lin := 1 to strGridVenda.RowCount - 1 do
for col := 1 to strGridVenda.ColCount - 1 do
for ilin := 1 to StringGridItens.RowCount - 1 do
//for dan := 1 to SGItens.RowCount - 1 do
strGridVenda.Cells[col, lin] := '';
  begin
  for Cont := 0 to OpenDialog1.Files.Count - 1 do
    begin
    // Abre o txt
    AssignFile(vArquivo,OpenDialog1.Files[Cont]);
    {$I-}
    Reset(vArquivo);
    {$I+}
    // Loop para percorrer todo arquivo
      begin
      while not eof(vArquivo) do
      begin
      // Limpa a variavel Linha
      vLinha := '';
      // L� o conte�do da linha atual
      ReadLn(vArquivo,vLinha);
      // Atribui valores as variaveis utilizando o comando COPY
      mIdBonificacao    :=   copy(vLinha,2,9);
      mCodigoPag :=   copy(vLinha,11,4);
      mHistorico :=   copy(vLinha,54,11);
      mDataVenda :=   copy(vLinha,65,10);
      mCodCliente :=   copy(vLinha,75,8);
      mCodVendedor :=   copy(vLinha,83,5);
      mValorTotal :=   copy(vLinha,88,9);
      mTipoOperacao :=   copy(vLinha,97,1);
      mSaldoAnterior :=   copy(vLinha,98,9);
      mSaldo :=   copy(vLinha,107,9);
      mCodCliente :=   copy(vLinha,75,8);
      mTIPOREG2  := copy(vLinha,2,06);
      mCOD_OCOR2 := copy(vLinha,8,04);
      mFAV2      := copy(vLinha,16,09);
      mValorV    := copy(vLinha,25,09);
      mCodVendedor :=   copy(vLinha,83,5);
      //Mostra na grid
      if   (copy(vLinha,1,1) = 'V') then
        begin
        strGridVenda.Cells[1,vRowStrGrid] :=mIdBonificacao;
        strGridVenda.Cells[2,vRowStrGrid] :=mCodigoPag;
        strGridVenda.Cells[3,vRowStrGrid] :=mHistorico;
        strGridVenda.Cells[4,vRowStrGrid] :=mDataVenda;
        strGridVenda.Cells[5,vRowStrGrid] :=mCodCliente;
        strGridVenda.Cells[6,vRowStrGrid] :=mCodVendedor;
        strGridVenda.Cells[7,vRowStrGrid] :=mValorTotal;
        strGridVenda.Cells[8,vRowStrGrid] :=mTipoOperacao;
        strGridVenda.Cells[9,vRowStrGrid] :=mSaldoAnterior;
        strGridVenda.Cells[10,vRowStrGrid]:=mSaldo;
        vRowstrGrid := vRowstrGrid + 1;
        end;
        with StringGridItens do
          begin
          Cells[1,0] :='CLIENTE';
          Cells[2,0] :='PRODUTO';
          Cells[3,0] :='QUANTIDADE';
          Cells[4,0] :='DATA VENDA';
          Cells[5,0] :='VALOR TABELA';
          Cells[6,0] :='VALOR VENDA';
          end;
          StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
          StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
          StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
          StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
          StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
          if (copy(vLinha,1,1) = 'I') then
            begin
            StringGridItens.Cells[1,vIRowstrGrid] :=strGridVenda.Cells[5,1];
            StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
            StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
            StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
            StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
            StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
            vIRowstrGrid := vIRowstrGrid + 1;
            StringGridItens.RowCount := vIRowstrGrid;
            end;
          end;
        end;
        Closefile (vArquivo);
      end;
    end;
end;


procedure TForPrincipal.ConsultaporData1Click(Sender: TObject);
begin
  RelBonifVend :=TRelBonifVend.Create(Application);
  RelBonifVend.Show;
end;

procedure TForPrincipal.EditIdmovKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TForPrincipal.EditPesoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',',#8]) then
  key :=#0;
end;

procedure TForPrincipal.Fechar1Click(Sender: TObject);
begin
  if (Application.MessageBox('Deseja sair do Sistema?','Aviso',36)=6) then
  begin
    Application.Terminate;
  end
    else
    begin
      abort;
    end;
end;

procedure TForPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Deseja Realmente Sair?','Aviso',36)=6) then
  begin
    Application.Terminate;
  end
    else
    begin
      abort
    end;
end;

procedure TForPrincipal.FormShow(Sender: TObject);
begin
with SGFonte do
    begin
    Cells[1,0] :='COD';
    Cells[2,0] :='N� VENDA';
    Cells[3,0] :='FORMA PAG';
    Cells[4,0] :='OBS';
    Cells[5,0] :='DATA VENDA';
    Cells[6,0] :='CLIENTE';
    Cells[7,0] :='VENDEDOR';
    Cells[8,0] :='VLR TOTAL';
    Cells[9,0] :='OPERA��O';
    Cells[10,0]:='SALDO ANT';
    Cells[11,0]:='SALDO POST';
    ColWidths[1] :=40;
    ColWidths[2] :=80;
    ColWidths[3] :=80;
    ColWidths[4] :=250;
    ColWidths[5] :=80;
    ColWidths[6] :=80;
    ColWidths[7] :=90;
    ColWidths[8] :=80;
    ColWidths[9] :=90;
    ColWidths[10]:=90;
    strGridVenda.ColWidths[1] :=40;
    strGridVenda.ColWidths[2] :=80;
    strGridVenda.ColWidths[3] :=80;
    strGridVenda.ColWidths[4] :=250;
    strGridVenda.ColWidths[5] :=80;
    strGridVenda.ColWidths[6] :=80;
    strGridVenda.ColWidths[7] :=90;
    strGridVenda.ColWidths[8] :=80;
    strGridVenda.ColWidths[9] :=90;
    strGridVenda.ColWidths[10]:=90;
    end;
    PageControl1.TabIndex :=0;
end;

procedure TForPrincipal.Image2Click(Sender: TObject);
var
vArquivo2 : TextFile;

vLinha2,mCOD_OCOR,mCOD_OCOR2, mTIPOREG, mTIPOREG2,mFAV,mFAV2, mDATAPGTO,mUNIDADE,mData,mValorV: string;
vNUMREC,vRowStrGrid,vRowstrGrid2, I,Cont,Cont2,col,lin,S :  integer;
mVALOR : extended;
ValorTotal,SomaTotal :Real;
lstFile : TStringList;
mNumeroVenda: string;
viRowstrGrid: Integer;
ilin: Integer;
NUMEROVENDA,CLIENTE,VENDEDOR,DATAVENDA: string;
  CODPRODUTO: string;
  QUANT: string;
  VALORTABELA: string;
  VALORVENDA: string;
  CODCLIENTE: string;
  CODVENDEDOR: string;
// Limpa StringGrid

begin
vRowstrGrid :=0;
viRowstrGrid :=0;
for lin := 0 to strGridVenda.RowCount - 1 do
for col := 0 to strGridVenda.ColCount - 1 do
for ilin := 0 to StringGridItens.RowCount - 1 do
strGridVenda.Cells[col, lin] := '';
  begin
  if (OpenDialog1.Execute) then
    begin
    for Cont := 0 to OpenDialog1.Files.Count - 1 do
      begin
      // Abre o txt
      AssignFile(vArquivo,OpenDialog1.Files[Cont]);
      {$I-}
      Reset(vArquivo);
      {$I+}
      // Loop para percorrer todo arquivo
        begin
        while not eof(vArquivo) do
          begin
          // Limpa a variavel Linha
          vLinha := '';
          // L� o conte�do da linha atual
          ReadLn(vArquivo,vLinha);
          // Atribui valores as variaveis utilizando o comando COPY
          mIdBonificacao:=copy(vLinha,1,1);   //Tabela Venda
          mNumeroVenda  :=copy(vLinha,2,09);  //Tabela Venda
          mCodigoPag    :=copy(vLinha,11,4);  //Tabela Venda
          mHistorico    :=copy(vLinha,15,50); //Tabela Venda
          mDataVenda    :=copy(vLinha,65,10); //Tabela Venda
          CODCLIENTE   :=copy(vLinha,75,8);  //Tabela Venda
          CODVENDEDOR  :=copy(vLinha,83,5);  //Tabela Venda
          mValorTotal   :=copy(vLinha,88,9);  //Tabela Venda
          mTipoOperacao :=copy(vLinha,97,1);  //Tabela Venda
          mSaldoAnterior:=copy(vLinha,98,9);  //Tabela Venda
          mSaldo        :=copy(vLinha,107,9); //Tabela Venda
          CODPRODUTO     :=copy(vLinha,2,06);  //Tabela Itens
          QUANT    :=copy(vLinha,8,04);  //Tabela Itens
          VALORTABELA         :=copy(vLinha,16,09); //Tabela Itens
          VALORVENDA       :=copy(vLinha,25,09); //Tabela Itens
          CODVENDEDOR  :=copy(vLinha,83,5);  //Tabela Itens
          //Mostra na grid
          if   (copy(vLinha,1,1) = 'V') then
            begin
            strGridVenda.Cells[1,vRowStrGrid] :=mIdBonificacao;
            strGridVenda.Cells[2,vRowStrGrid] :=mNumeroVenda;
            strGridVenda.Cells[3,vRowStrGrid] :=mCodigoPag;
            strGridVenda.Cells[4,vRowStrGrid] :=mHistorico;
            strGridVenda.Cells[5,vRowStrGrid] :=mDataVenda;
            strGridVenda.Cells[6,vRowStrGrid] :=CODCLIENTE;
            strGridVenda.Cells[7,vRowStrGrid] :=CODVENDEDOR;
            strGridVenda.Cells[8,vRowStrGrid] :=mValorTotal;
            strGridVenda.Cells[9,vRowStrGrid] :=mTipoOperacao;
            strGridVenda.Cells[10,vRowStrGrid]:=mSaldoAnterior;
            strGridVenda.Cells[11,vRowStrGrid]:=mSaldo;
            NUMEROVENDA   :=strGridVenda.Cells[2,vRowStrGrid];
            DATAVENDA     :=strGridVenda.Cells[5,vRowStrGrid];
            CLIENTE       :=strGridVenda.Cells[6,vRowStrGrid];
            VENDEDOR      :=strGridVenda.Cells[7,vRowStrGrid];
            vRowstrGrid := vRowstrGrid + 1;
            strGridVenda.RowCount := vRowstrGrid;
            end;
            with StringGridItensTitulo do
              begin
              Cells[0,0] := 'N� VENDA';
              Cells[1,0] := 'PRODUTO';
              Cells[2,0] := 'QUANT';
              Cells[3,0] := 'DATA VENDA';
              Cells[4,0] := 'VALOR TABELA';
              Cells[5,0] := 'VALOR VENDA';
              Cells[6,0] := 'CLIENTE';
              Cells[7,0] := 'VENDEDOR';
              end;
              StringGridItens.Cells[0,vIRowstrGrid] := NUMEROVENDA;
              StringGridItens.Cells[1,vIRowstrGrid] := CODPRODUTO;
              StringGridItens.Cells[2,vIRowstrGrid] := QUANT;
              StringGridItens.Cells[3,vIRowstrGrid] := DATAVENDA;
              StringGridItens.Cells[4,vIRowstrGrid] := VALORTABELA;
              StringGridItens.Cells[5,vIRowstrGrid] := VALORVENDA;
              StringGridItens.Cells[6,vIRowstrGrid] := CLIENTE;
              StringGridItens.Cells[7,vIRowstrGrid] := VENDEDOR;
              if   (copy(vLinha,1,1) = 'I') then
                begin
                StringGridItens.Cells[0,vIRowstrGrid] := NUMEROVENDA;
                StringGridItens.Cells[1,vIRowstrGrid] := CODPRODUTO;
                StringGridItens.Cells[2,vIRowstrGrid] := QUANT;
                StringGridItens.Cells[3,vIRowstrGrid] := DATAVENDA;
                StringGridItens.Cells[4,vIRowstrGrid] := VALORTABELA;
                StringGridItens.Cells[5,vIRowstrGrid] := VALORVENDA;
                StringGridItens.Cells[6,vIRowstrGrid] := CLIENTE;
                StringGridItens.Cells[7,vIRowstrGrid] := VENDEDOR;
                vIRowstrGrid := vIRowstrGrid + 1;
                StringGridItens.RowCount := vIRowstrGrid;
                end;
              end;
            end;
             Closefile (vArquivo);
          end;
      end;
  end;
end;

function TForPrincipal.SoCaracteresPermitidos(s:string):string;
var
  x:Integer;
  sAux:String;
begin
  sAux := '';
  for x := 1 to Length(s) do
    if s[x]  in ['0','a'..'z','A'..'Z', '0'..'9', ',', ';', ' ', '/', '\', '|', '"',
                 '-', '=', '(', ')', '{', '}', '[', ']', '.', ':'] then
      sAux := sAux + s[x]
    else
      sAux := sAux + #32;
  result := sAux;
end;

procedure TForPrincipal.Image3Click(Sender: TObject);
var vRowstrGrid, I,Cont,Cont2,col,lin,S :  integer;
vIRowStrGrid: integer;
ilin: Integer;
Query1: TADOQuery;
Query2: TADOQuery;
Query3: TADOQuery;
Query4: TADOQuery;
  VALORTOTAL: string;
  SALDOANTERIOR: string;
  VALORITEMVEND: string;
  VALORTABELA: string;
  icol: Integer;
  j: Integer;
begin
if not(cdsBonigerar.Active) then
cdsBonigerar.Open;
if not (cdsBonigerarIten.Active) then
cdsBonigerarIten.open;
ProgressBar1.Position := 0;
ProgressBar1.Visible := true;
ProgressBar1.Max := StringGridItens.RowCount;
vRowStrGrid:= 0;
vIRowStrGrid :=0;


//for lin := 0 to strGridVenda.RowCount - 1 do
//for col := 0 to strGridVenda.ColCount - 1 do
//for ilin := 0 to StringGridItens.RowCount - 1 do
for j := 1 to strGridVenda.RowCount  do
begin
//while (strGridVenda.RowCount >=0) do
//   begin
      cdsBonigerar.Append();
      VALORTOTAL := stringreplace(strGridVenda.Cells[7,vRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]);
      SALDOANTERIOR := stringreplace(strGridVenda.Cells[8,vRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]);
      cdsBonigerar.FieldByName('NUMEROMOVB').Value    :=Trim(strGridVenda.Cells[1,vRowStrGrid]);
      cdsBonigerar.FieldByName('CODCPGB').Value       :=Trim(strGridVenda.Cells[3,vRowStrGrid]);
      cdsBonigerar.FieldByName('HISTORICOB').Value    :=Trim(strGridVenda.Cells[4,vRowStrGrid]);
      cdsBonigerar.FieldByName('DATAVENDA').Value     :=FormatDateTime('dd/mm/yyyy hh:mm:ss', StrtoDate(strGridVenda.Cells[5,vRowStrGrid]));
      cdsBonigerar.FieldByName('CODCFOB').Value       :=Trim(strGridVenda.Cells[6,vRowStrGrid]);
      cdsBonigerar.FieldByName('VALORTOTAL').Asfloat    := strToFloat(stringreplace(strGridVenda.Cells[8,vRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]));
      cdsBonigerar.FieldByName('TIPOOPERACAO').Value  :=Trim(strGridVenda.Cells[9,vRowStrGrid]);
      cdsBonigerar.FieldByName('SALDOANTERIOR').Asfloat :=strToFloat(stringreplace(strGridVenda.Cells[10,vRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]));
      cdsBonigerar.FieldByName('SALDOPOSTERIOR').Asfloat      := strToFloat(stringreplace(strGridVenda.Cells[11,vRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]));
      cdsBonigerar.FieldByName('DATACRIACAOB').Value      := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
      cdsBonigerar.Post();
      cdsBonigerar.next;
//      strGridVenda.RowCount := strGridVenda.RowCount -1;
      vRowStrGrid := vRowStrGrid +1;
//      break;
  end;
  cdsBonigerar.ApplyUpdates(0);

for i := 1 to StringGridItens.RowCount  do
begin
//  while (StringGridItens.RowCount >= 0) do
//   begin
        cdsBonigerarIten.Append();
        VALORITEMVEND  := stringreplace(StringGridItens.Cells[4,viRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]);
        VALORTABELA    := stringreplace(StringGridItens.Cells[5,viRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]);
        cdsBonigerarIten.FieldByName('NUMEROVEND').Value    :=Trim(StringGridItens.Cells[0,vIRowstrGrid]);
        cdsBonigerarIten.FieldByName('CODPRD').Value        :=Trim(StringGridItens.Cells[1,viRowStrGrid]);
        cdsBonigerarIten.FieldByName('QUANTIDADE').Value    :=Trim(StringGridItens.Cells[2,viRowStrGrid]);
        cdsBonigerarIten.FieldByName('VALORITEMVEND').Asfloat :=StrToFloat(stringreplace(StringGridItens.Cells[5,viRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]));
        cdsBonigerarIten.FieldByName('VALORTABELA').Asfloat   :=StrToFloat(stringreplace(StringGridItens.Cells[4,viRowStrGrid], '.', ',',[rfReplaceAll, rfIgnoreCase]));
        cdsBonigerarIten.FieldByName('DATAVENDA').Value     :=FormatDateTime('dd/mm/yyyy hh:mm:ss', StrtoDate(StringGridItens.Cells[3,viRowStrGrid]));
        cdsBonigerarIten.FieldByName('CODVEN1').Value       :=Trim(StringGridItens.Cells[7,viRowStrGrid]);
        cdsBonigerarIten.FieldByName('CODCFOB').Value       :=Trim(StringGridItens.Cells[6,viRowStrGrid]);
        cdsBonigerarIten.FieldByName('DATACRIACAO').Value      := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
        cdsBonigerarIten.Post();
        cdsBonigerarIten.next;
//        StringGridItens.RowCount := StringGridItens.RowCount -1;

        viRowStrGrid := viRowStrGrid +1;
        ProgressBar1.Position := viRowStrGrid + 1;
//        Break;
        end;
         cdsBonigerarIten.ApplyUpdates(0);





//      Query1:= TADOQuery.Create(nil);
//      try
//      Query1.Connection := ADOConnection1;
//      Query1.Connection.Connected;
//      Query1.Close;
//      Query1.SQL.Clear;
//      Query1.SQL.Add('delete from GD_BONIFICACAO where CODCFOB =''''');
//      Query1.ExecSQL;
//      finally
//      FreeAndNil(Query1);
//      end;

//      ProgressBar1.Position := 0;
//      ProgressBar1.Visible := False;
//      Showmessage ('Atualiza��o Realizada com Sucesso');
//      Query2:= TADOQuery.Create(nil);
//      try
//      Query2.Connection := ADOConnection1;
//      Query2.Connection.Connected;
//      Query2.Close;
//      Query2.SQL.Clear;
//      Query2.SQL.Add('delete from GD_BONIFICACAOITEN where CODPRD =''''');
//      Query2.ExecSQL;
//      finally
//      FreeAndNil(Query2);
//      end;
//      strGridVenda.Cells[col, lin] := '';
//      StringGridItens.Cells[col, lin] := '';
      cdsBonigerar.close;
      cdsBonigerar.Open();
      cdsBonigerarIten.close;
      cdsBonigerarIten.open;


end;

Function TForPrincipal.tira_espaco(x:String):String; Export;
var
quant: integer;
x_ini, x_fim: string;
Begin
quant:= Length(x);
x_ini:= copy(x,0,1);
x_fim:= copy(x,quant,1);
 if (x_ini = ' ') and (x_fim = ' ') then
   begin
    delete(x,1,1);
    delete(x,(quant-1),1);
   end;
 if (x_ini = ' ') and (x_fim <> ' ') then
    delete(x,1,1);
 if (x_ini <> ' ') and (x_fim = ' ') then
    delete(x,quant,1);
Result:=x;
end;


procedure TForPrincipal.Image4Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant; RowCount, ColCount, i, j: Integer;
begin {create variant array where we'll copy our data}
  RowCount := strGridVenda.RowCount;
  ColCount := strGridVenda.ColCount;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant); {fill array}
  for i := 1
  to RowCount do
  for j := 1
  to ColCount do arrData[i, j] := strGridVenda.Cells[j-1, i-1]; {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application'); {create workbook}
  wb := xls.Workbooks.Add; {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1], wb.WorkSheets[1].Cells[RowCount, ColCount]]; {copy data from allocated variant array}
  Range.Value := arrData; {show Excel with our data}
  xls.Visible := True;
end;

procedure TForPrincipal.Image5Click(Sender: TObject);
begin
if (Application.MessageBox('Deseja Realmente Sair?','Aviso',36)=6) then
  begin
    Application.Terminate;
  end
    else
    begin
      abort
    end;
end;

procedure TForPrincipal.ExecSQL(sql: String);
var
Query: TADOQuery;
begin
Query:= TADOQuery.Create(nil);
  try
  Query.Connection := ADOConnection1;
  Query.Connection.Connected;
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(sql);
  Query.ExecSQL;
  finally
  FreeAndNil(Query);
  end;
end;


procedure TForPrincipal.Image6Click(Sender: TObject);
begin
  If EditIdmov.text = ''  then
  begin showmessage('Por favor, digite algum valor no Identificador de Movimento'); abort;
  end;
    begin
      If EditPeso.text = ''  then
      begin showmessage('Por favor, digite algum valor no Peso'); abort;
      end;
        begin
        if (MessageDlg('Deseja Atualizar Movimento n� ' +EditIdmov.text +' Com Peso de ' +EditPeso.Text, MtConfirmation, [mbYes,mbNo] , 0)= MrYes) then
          begin
          //PESO LIQUIDO
            QCarga.Close;
            QCarga.SQL.Clear;
            QCarga.SQL.Add ('UPDATE TMOV SET PESOLIQUIDO=:peso');
            QCarga.SQL.Add ('WHERE IDMOV=:mov');
            QCarga.Parameters.ParamByName ('peso').Value := EditPeso.Text;
            QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
            QCarga.ExecSQL;
          //PESO PRUTO
            QCarga.SQL.Clear;
            QCarga.SQL.Add ('UPDATE TMOV SET PESOBRUTO=:peso');
            QCarga.SQL.Add ('WHERE IDMOV=:mov');
            QCarga.Parameters.ParamByName ('peso').Value := EditPeso.Text;
            QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
            QCarga.ExecSQL;
          //CIDADES ESTADOS
            QCarga.SQL.Clear;
            QCarga.SQL.Add ('UPDATE TCTRC SET CODETDCOLETA=''GO'',CODMUNICIPIOCOLETA=17104,CODMUNICIPIOENTREGA=CODMUNICIPIO,CODETDENTREGA=UF');
            QCarga.SQL.Add ('WHERE IDMOV=:mov');
            QCarga.Parameters.ParamByName ('mov').Value := EditIdmov.Text;
            QCarga.ExecSQL;
            EditIdmov.Clear;
            EditPeso.Clear;
            EditIdmov.SetFocus;
            Showmessage ('Atualiza��o Realizada com Sucesso');
          end
            else
              Showmessage ('Atualiza��o Cancelada');
            end;
    end;
end;

procedure TForPrincipal.btgeraritensClick(Sender: TObject);
var vRowstrGrid,lin,col,Cont:Integer;
vArquivo:TextFile;
vLinha,mTIPOREG2, mCOD_OCOR2, mFAV2,  mValorV:string;
vIRowstrGrid: integer;
ilin: Integer;

begin
vRowstrGrid :=1;
viRowstrGrid :=1;
  for lin := 1 to strGridVenda.RowCount - 1 do
  for col := 1 to strGridVenda.ColCount - 1 do
  for ilin := 1 to StringGridItens.RowCount - 1 do
  strGridVenda.Cells[col, lin] := '';
  begin
    for Cont := 0 to OpenDialog1.Files.Count - 1 do
    begin
    // Abre o txt
    AssignFile(vArquivo,OpenDialog1.Files[Cont]);
    {$I-}
    Reset(vArquivo);
    {$I+}
    // Loop para percorrer todo arquivo
      begin
      while not eof(vArquivo) do
        begin
        // Limpa a variavel Linha
        vLinha := '';
        // L� o conte�do da linha atual
        ReadLn(vArquivo,vLinha);
        // Atribui valores as variaveis utilizando o comando COPY
        mIdBonificacao:=copy(vLinha,1,1);
        mCodigoPag    :=copy(vLinha,10,1);
        mHistorico    :=copy(vLinha,54,11);
        mDataVenda    :=copy(vLinha,65,10);
        mCodCliente   :=copy(vLinha,75,8);
        mCodVendedor  :=copy(vLinha,83,5);
        mValorTotal   :=copy(vLinha,91,8);
        mTipoOperacao :=copy(vLinha,97,1);
        mSaldoAnterior:=copy(vLinha,101,8);
        mSaldo        :=copy(vLinha,111,5);
        mCodCliente   :=copy(vLinha,75,8);
        mIdBonificacao:=copy(vLinha,1,1);
        mTIPOREG2     :=copy(vLinha,2,06);
        mCOD_OCOR2    :=copy(vLinha,8,04);
        mFAV2         :=copy(vLinha,16,09);
        mValorV       :=copy(vLinha,25,09);
        mCodVendedor  :=copy(vLinha,83,5);
        //Mostra na grid
        if (copy(vLinha,1,1) = 'V') then
          begin
          strGridVenda.Cells[1,vRowStrGrid] :=mIdBonificacao;
          strGridVenda.Cells[2,vRowStrGrid] :=mCodigoPag;
          strGridVenda.Cells[3,vRowStrGrid] :=mHistorico;
          strGridVenda.Cells[4,vRowStrGrid] :=mDataVenda;
          strGridVenda.Cells[5,vRowStrGrid] :=mCodCliente;
          strGridVenda.Cells[6,vRowStrGrid] :=mCodVendedor;
          strGridVenda.Cells[7,vRowStrGrid] :=mValorTotal;
          strGridVenda.Cells[8,vRowStrGrid] :=mTipoOperacao;
          strGridVenda.Cells[9,vRowStrGrid] :=mSaldoAnterior;
          strGridVenda.Cells[10,vRowStrGrid]:=mSaldo;
          vRowstrGrid := vRowstrGrid + 1;
          end;
          with StringGridItens do
            begin
            Cells[1,0] :='NUMERO|VENDA';
            Cells[2,0] :='PRODUTO';
            Cells[3,0] :='QUANTIDADE';
            Cells[4,0] :='DATA VENDA';
            Cells[5,0] :='VALOR TABELA';
            Cells[6,0] :='VALOR VENDA';
            end;
            StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
            StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
            StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
            StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
            StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
            if (copy(vLinha,1,1) = 'I') then
              begin
              StringGridItens.Cells[1,vIRowstrGrid] :=copy(vLinha,75,8);
              StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
              StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
              StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
              StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
              StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
              vIRowstrGrid := vIRowstrGrid + 1;
              StringGridItens.RowCount := vIRowstrGrid;
              end;
            end;
          end;
          Closefile (vArquivo);
        end;
    end;
end;


procedure TForPrincipal.Importar1Click(Sender: TObject);
begin
 vImportar:= True;
 Image2Click(Self);
end;

procedure TForPrincipal.Novo1Click(Sender: TObject);
begin
frmControle.Show
end;

procedure TForPrincipal.Sair1Click(Sender: TObject);
begin
  if (Application.MessageBox('Deseja sair do Sistema?','Aviso',36)=6) then
  begin
    Application.Terminate;
  end
    else
    begin
      abort;
    end;
end;

procedure TForPrincipal.SGItensDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
if not (gdFixed in State) Then Begin // se a c�lula n�o � fixa
  if (ARow Mod 2) = 0 Then
  // cor para as linhas pares
//  SGItens.Canvas.Brush.Color:= clWindow
    else

    // cor par as linhas �mpares
//    SGItens.Canvas.Brush.COlor:= $00EEEEEE;

    // desenha o ret�ngulo da c�lula
//    SGItens.Canvas.FillRect(Rect);

    // define a cor do texto
//    SGItens.Canvas.Pen.Color:= clBlack;

    // esceve o texto na c�lula
//    SGItens.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
//    SGItens.Cells[ACol, ARow]);
    end;
end;


procedure TForPrincipal.Sistema1Click(Sender: TObject);
begin
  FrmSobre.show;
end;


procedure TForPrincipal.SpeedButton5Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant; RowCount, ColCount, i, j: Integer;
begin {create variant array where we'll copy our data}
  RowCount := strGridVenda.RowCount;
  ColCount := strGridVenda.ColCount;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant); {fill array}
  for i := 1
  to RowCount do
  for j := 1
  to ColCount do arrData[i, j] := strGridVenda.Cells[j-1, i-1]; {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application'); {create workbook}
  wb := xls.Workbooks.Add; {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1], wb.WorkSheets[1].Cells[RowCount, ColCount]]; {copy data from allocated variant array}
  Range.Value := arrData; {show Excel with our data}
  xls.Visible := True;
end;

procedure TForPrincipal.SpeedButton7Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant; RowCount, ColCount, i, j: Integer;
begin {create variant array where we'll copy our data}
  RowCount := StringGridItens.RowCount;
  ColCount := StringGridItens.ColCount;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant); {fill array}
  for i := 1
  to RowCount do
  for j := 1
  to ColCount do arrData[i, j] := StringGridItens.Cells[j-1, i-1]; {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application'); {create workbook}
  wb := xls.Workbooks.Add; {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1], wb.WorkSheets[1].Cells[RowCount, ColCount]]; {copy data from allocated variant array}
  Range.Value := arrData; {show Excel with our data}
  xls.Visible := True;
end;

procedure TForPrincipal.strGridVendaClick(Sender: TObject);
var
vArquivo,vArquivo2 : TextFile;
vLinha,mCOD_OCOR, mTIPOREG, mFAV, mDATAPGTO,mCOD_OCOR2, mTIPOREG2, mFAV2, mDATAPGTO2,mUNIDADE,mData: string;
vNUMREC,vRowStrGrid, I,Cont,Cont2,col,lin,S :  integer;
mVALOR : extended;
ValorTotal,SomaTotal :Real;
// Limpa StringGrid
begin

end;

procedure TForPrincipal.strGridVendaDblClick(Sender: TObject);
var vRowstrGrid,lin,col,Cont:Integer;
vArquivo:TextFile;
vLinha,mTIPOREG2, mCOD_OCOR2, mFAV2,  mValorV:string;
  vIRowstrGrid: integer;
  ilin: Integer;
begin
vRowstrGrid :=1;
viRowstrGrid :=1;
  for lin := 1 to strGridVenda.RowCount - 1 do
  for col := 1 to strGridVenda.ColCount - 1 do
  for ilin := 1 to StringGridItens.RowCount - 1 do
  strGridVenda.Cells[col, lin] := '';
    begin
    for Cont := 0 to OpenDialog1.Files.Count - 1 do
      begin
      // Abre o txt
      AssignFile(vArquivo,OpenDialog1.Files[Cont]);
      {$I-}
      Reset(vArquivo);
      {$I+}
      // Loop para percorrer todo arquivo
        begin
        while not eof(vArquivo) do
          begin
          // Limpa a variavel Linha
          vLinha := '';
          // L� o conte�do da linha atual
          ReadLn(vArquivo,vLinha);
          // Atribui valores as variaveis utilizando o comando COPY
          mIdBonificacao:=copy(vLinha,1,1);
          mCodigoPag    :=copy(vLinha,10,1);
          mHistorico    :=copy(vLinha,54,11);
          mDataVenda    :=copy(vLinha,65,10);
          mCodCliente   :=copy(vLinha,75,8);
          mCodVendedor  :=copy(vLinha,83,5);
          mValorTotal   :=copy(vLinha,91,8);
          mTipoOperacao :=copy(vLinha,97,1);
          mSaldoAnterior:=copy(vLinha,101,8);
          mSaldo        :=copy(vLinha,111,5);
          mCodCliente   :=copy(vLinha,75,8);
          mIdBonificacao:=copy(vLinha,1,1);
          mTIPOREG2     :=copy(vLinha,2,06);
          mCOD_OCOR2    :=copy(vLinha,8,04);
          mFAV2         :=copy(vLinha,16,09);
          mValorV       :=copy(vLinha,25,09);
          mCodVendedor  :=copy(vLinha,83,5);
          //Mostra na grid
          if   (copy(vLinha,1,1) = 'V') then
            begin
            strGridVenda.Cells[1,vRowStrGrid] :=mIdBonificacao;
            strGridVenda.Cells[2,vRowStrGrid] :=mCodigoPag;
            strGridVenda.Cells[3,vRowStrGrid] :=mHistorico;
            strGridVenda.Cells[4,vRowStrGrid] :=mDataVenda;
            strGridVenda.Cells[5,vRowStrGrid] :=mCodCliente;
            strGridVenda.Cells[6,vRowStrGrid] :=mCodVendedor;
            strGridVenda.Cells[7,vRowStrGrid] :=mValorTotal;
            strGridVenda.Cells[8,vRowStrGrid] :=mTipoOperacao;
            strGridVenda.Cells[9,vRowStrGrid] :=mSaldoAnterior;
            strGridVenda.Cells[10,vRowStrGrid]:=mSaldo;
            vRowstrGrid := vRowstrGrid + 1;
            end;
            with StringGridItens do
              begin
              Cells[1,0] := 'NUMERO|VENDA';
              Cells[2,0] := 'PRODUTO';
              Cells[3,0] := 'QUANTIDADE';
              Cells[4,0] := 'DATA VENDA';
              Cells[5,0] := 'VALOR TABELA';
              Cells[6,0] := 'VALOR VENDA';
              end;
              StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
              StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
              StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
              StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
              StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
              if   (copy(vLinha,1,1) = 'I') then
                begin
                StringGridItens.Cells[1,vIRowstrGrid] :=copy(vLinha,75,8);
                StringGridItens.Cells[2,vIRowstrGrid] :=mTIPOREG2;
                StringGridItens.Cells[3,vIRowstrGrid] :=mCOD_OCOR2;
                StringGridItens.Cells[4,vIRowstrGrid] :=strGridVenda.Cells[4,1];
                StringGridItens.Cells[5,vIRowstrGrid] :=mFAV2;
                StringGridItens.Cells[6,vIRowstrGrid] :=mValorV;
                vIRowstrGrid := vIRowstrGrid + 1;
                StringGridItens.RowCount := vIRowstrGrid;
                end;
              end;
            end;
            Closefile (vArquivo);
        end;
     end;
 end;


procedure TForPrincipal.strGridVendaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
if (gdSelected in State) then
  begin
  // Aqui eu defini a cor da coluna do dbGrid para Verde com a fonte branca.
  strGridVenda.Canvas.Brush.Color := clGreen;
  strGridVenda.Canvas.Font.Color := clWhite;
  end
  else
    begin
    // Aqui eu defini a cor da coluna do dbGrid para Verde Claro com a fonte preta.
    strGridVenda.Canvas.Brush.Color := clLime;
    strGridVenda.Canvas.Font.Color := clBlack;
    end;
end;

procedure TForPrincipal.strGridVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
I, J,H, Coluna,Coluna1: byte;
begin
    Coluna := 0; //Coluna do StrinGrid
    If strGridVenda.Row < 0
    Then Begin
    ShowMessage('Selecione uma linha a ser excluida.');
    Exit;
    End;
    If  MessageDlg('Voc� tem certeza que deseja excluir o registro?',mtConfirmation,[mbyes,mbno],0)=mryes
    then
      begin
      strGridVenda.Cells[Coluna,strGridVenda.Row] := '';
      strGridVenda.Cells[Coluna + 1,strGridVenda.Row] := '';
      //Deslocando tudo o que tem abaixo da linha excluida
      //uma linha acima, para n�o deixar nenhuma linha em branco.
      For J:=strGridVenda.Row to strGridVenda.RowCount - 1 do
        Begin
        strGridVenda.Cells[0,J] :=strGridVenda.Cells[0,J + 1];
        strGridVenda.Cells[1,J] :=strGridVenda.Cells[1,J + 1];
        strGridVenda.Cells[2,J] :=strGridVenda.Cells[2,J + 1];
        strGridVenda.Cells[3,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[4,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[5,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[6,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[7,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[8,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[9,J] :=strGridVenda.Cells[3,J + 1];
        strGridVenda.Cells[10,J]:=strGridVenda.Cells[3,J + 1];
        End;
        StringGridItens.Cells[Coluna1,StringGridItens.Row] := '';
        StringGridItens.Cells[Coluna1 + 1,StringGridItens.Row] := '';
        //Deslocando tudo o que tem abaixo da linha excluida
        //uma linha acima, para n�o deixar nenhuma linha em branco.
        For J:=StringGridItens.Row to StringGridItens.RowCount - 1 do
          Begin
          StringGridItens.Cells[0,H] :=StringGridItens.Cells[0,H + 1];
          StringGridItens.Cells[1,H] :=StringGridItens.Cells[1,H + 1];
          StringGridItens.Cells[2,H] :=StringGridItens.Cells[2,H + 1];
          StringGridItens.Cells[3,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[4,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[5,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[6,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[7,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[8,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[9,H] :=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[11,H]:=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[12,H]:=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[13,H]:=StringGridItens.Cells[3,H + 1];
          StringGridItens.Cells[14,H]:=StringGridItens.Cells[3,H + 1];
          end;
      end;
end;

procedure TForPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' ' + FormatDateTime('hh:nn:ss',now); //
  StatusBar1.Panels[1].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now); //
end;


procedure TForPrincipal.Verso1Click(Sender: TObject);
begin
  FrmVersao.Show;
end;

procedure TForPrincipal.Usarios1Click(Sender: TObject);
begin
frmUsuario.Show;
end;

end.
