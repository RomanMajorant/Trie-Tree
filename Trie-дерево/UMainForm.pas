unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, UTrieTree, Spin;

type
  TMainForm = class(TForm)
    inputEdt: TEdit;
    fillTreeBtn: TButton;
    findFormsBtn: TButton;
    grp1: TGroupBox;
    treeView: TTreeView;
    grp2: TGroupBox;
    resultMmo: TMemo;
    BtnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure fillTreeBtnClick(Sender: TObject);
    procedure findFormsBtnClick(Sender: TObject);
    procedure inputEdtChange(Sender: TObject);
    procedure inputEdtKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCloseClick(Sender: TObject);
  private
    tree: TTrieTree;
    function getInput: String;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  tree := TTrieTree.Create();

end;

procedure TMainForm.fillTreeBtnClick(Sender: TObject);
var
  input: String;
begin
  input := getInput;
  tree.push(input);
  tree.print(treeView);
  inputEdt.Clear;
end;


procedure TMainForm.findFormsBtnClick(Sender: TObject);
begin
  resultMmo.Lines := tree.GetWords();
end;


function TMainForm.getInput: String;
begin
  result:= inputEdt.Text;
end;

procedure TMainForm.inputEdtChange(Sender: TObject);
begin
  inputEdt.Text:= Trim(inputEdt.Text);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  tree.Free;
end;

procedure TMainForm.inputEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if (key >=' ') and ((Key<'a') or (Key>'z')) then
    key := #0;
end;





procedure TMainForm.BtnCloseClick(Sender: TObject);
begin
MainForm.Close
end;

end.
