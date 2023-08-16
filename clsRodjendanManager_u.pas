unit clsRodjendanManager_u;

interface

uses  System.Generics.Collections, clsRodjendan_u, System.Classes, System.SysUtils,
      System.StrUtils, System.DateUtils, System.IOUtils, System.Math;

type
  TRodjendanManager = Class

  private
    strFilePath : String;
    intNextId : Integer;
    dicRodjendani: TDictionary<Integer, TRodjendan>;
  public
    constructor Create(strFilePath : String);
    destructor Destroy; override;
    procedure save;overload;
    procedure save(strPath : String);overload;
    procedure load;overload;
    procedure load(strPath : String);overload;
    procedure add(strOsoba: String; dteDatum: TDate);
    procedure remove(intId : Integer); overload;
    procedure remove(strOsoba : String); overload;
    procedure update(intId : Integer; strOsoba : String; dteDatum : TDate);
    function find(intId : Integer) : TRodjendan; overload;
    function find(strOsoba : String) : TRodjendan; overload;
    procedure find(dteDatum : TDate; oblRodjendani : TObjectList<TRodjendan>); overload;
    procedure findByMonth(bteMesec : Byte; oblRodjendani : TObjectList<TRodjendan>); overload;
    function getdicRodjendani() : TDictionary<Integer, TRodjendan>;
    function izvestajNajstariji() : TObjectList<TRodjendan>;
    function izvestajNajmladji() : TObjectList<TRodjendan>;
    function izvestajMesecMax() : TDictionary<Byte, Integer>;
    function izvestajMesecMin() : TDictionary<Byte, Integer>;

end;

implementation

{ TRodjendanManager }

procedure TRodjendanManager.add(strOsoba: String; dteDatum: TDate);
begin
  Self.dicRodjendani.Add(Self.intNextId, TRodjendan.Create(Self.intNextId,
                                                     strOsoba, dteDatum));
  Inc(Self.intNextId);
end;

constructor TRodjendanManager.Create(strFilePath : String);
begin
  inherited Create;
  Self.intNextId := 1;
  Self.strFilePath := strFilePath;

  if not TFile.Exists(strFilePath) then
  begin
    try
      TFile.WriteAllText(strFilePath, '');
    finally
    end;
  end;

  Self.dicRodjendani := TDictionary<Integer, TRodjendan>.Create
end;

destructor TRodjendanManager.Destroy;
begin
  Self.dicRodjendani.Destroy;
  inherited Destroy;
end;

function TRodjendanManager.find(intId: Integer): TRodjendan;
begin
  Result := Self.dicRodjendani[intId];
end;

function TRodjendanManager.find(strOsoba: String): TRodjendan;
var
  rdjRodjendanTmp : TRodjendan;
begin
  Result := nil;
  for rdjRodjendanTmp in Self.dicRodjendani.Values do
  begin
    if rdjRodjendanTmp.getOsoba = strOsoba then
      Result := rdjRodjendanTmp;
  end;
end;

procedure TRodjendanManager.find(dteDatum : TDate; oblRodjendani : TObjectList<TRodjendan>);
var
  rdjRodjendanTmp : TRodjendan;
begin
  for rdjRodjendanTmp in Self.dicRodjendani.Values do
  begin
    if (DayOf(dteDatum) = DayOf(rdjRodjendanTmp.getDatum()))
      AND (MonthOf(dteDatum) = MonthOf(rdjRodjendanTmp.getDatum()))
      AND (rdjRodjendanTmp.getDatum < dteDatum) then
      oblRodjendani.Add(rdjRodjendanTmp)
  end;
end;

procedure TRodjendanManager.findByMonth(bteMesec: Byte;
  oblRodjendani: TObjectList<TRodjendan>);
var
  rdjRodjendanTmp : TRodjendan;
begin
  for rdjRodjendanTmp in Self.dicRodjendani.Values do
  begin
    if (bteMesec = MonthOf(rdjRodjendanTmp.getDatum())) then
      oblRodjendani.Add(rdjRodjendanTmp)
  end;
end;

function TRodjendanManager.getdicRodjendani: TDictionary<Integer, TRodjendan>;
begin
  Result := Self.dicRodjendani;
end;

function TRodjendanManager.izvestajMesecMax: TDictionary<Byte, Integer>;
var
  I: Integer;
  dicIzvesatj : TDictionary<Byte, Integer>;
  rdjTmp : TRodjendan;
  intMax : Integer;
begin
  dicIzvesatj := TDictionary<Byte, Integer>.Create;

  for I := 1 to 12 do
    dicIzvesatj.Add(I, 0);

  for rdjTmp in dicRodjendani.Values do
    dicIzvesatj[MonthOf(rdjTmp.getDatum)] := dicIzvesatj[MonthOf(rdjTmp.getDatum)] + 1;

  intMax := MaxIntValue(dicIzvesatj.Values.ToArray);

  for I in dicIzvesatj.Keys do
  begin
    if dicIzvesatj[I] < intMax then
    begin
      dicIzvesatj.Remove(I);
    end;
  end;

  Result := dicIzvesatj;
end;

function TRodjendanManager.izvestajMesecMin: TDictionary<Byte, Integer>;
var
  I: Integer;
  dicIzvesatj : TDictionary<Byte, Integer>;
  rdjTmp : TRodjendan;
  intMin : Integer;
begin
  dicIzvesatj := TDictionary<Byte, Integer>.Create;

  for I := 1 to 12 do
    dicIzvesatj.Add(I, 0);

  for rdjTmp in dicRodjendani.Values do
    dicIzvesatj[MonthOf(rdjTmp.getDatum)] := dicIzvesatj[MonthOf(rdjTmp.getDatum)] + 1;

  intMin := MinIntValue(dicIzvesatj.Values.ToArray);

  for I in dicIzvesatj.Keys do
  begin
    if dicIzvesatj[I] > intMin then
    begin
      dicIzvesatj.Remove(I);
    end;
  end;

  Result := dicIzvesatj;
end;

function TRodjendanManager.izvestajNajmladji: TObjectList<TRodjendan>;
var
  oblRetList : TObjectList<TRodjendan>;
  rdjTmp : TRodjendan;
begin
  oblRetList := TObjectList<TRodjendan>.Create(False);
  for rdjTmp in Self.dicRodjendani.Values do
  begin
    if (oblRetList.Count = 0) OR (oblRetList[0].getDatum = rdjTmp.getDatum) then
    begin
      oblRetList.Add(rdjTmp)
    end
    else if (oblRetList[0].getDatum < rdjTmp.getDatum) then
    begin
      oblRetList.Clear;
      oblRetList.Add(rdjTmp);
    end;


  end;

  Result := oblRetList;
end;

function TRodjendanManager.izvestajNajstariji: TObjectList<TRodjendan>;
var
  oblRetList : TObjectList<TRodjendan>;
  rdjTmp : TRodjendan;
begin
  oblRetList := TObjectList<TRodjendan>.Create(False);
  for rdjTmp in Self.dicRodjendani.Values do
  begin
    if (oblRetList.Count = 0) OR (oblRetList[0].getDatum = rdjTmp.getDatum) then
    begin
      oblRetList.Add(rdjTmp)
    end
    else if oblRetList[0].getDatum > rdjTmp.getDatum then
    begin
      oblRetList.Clear;
      oblRetList.Add(rdjTmp);
    end;
  end;

  Result := oblRetList;
end;

procedure TRodjendanManager.load;
begin
  Self.load(Self.strFilePath);
end;

procedure TRodjendanManager.load(strPath: String);
var
  sreStreamReader : TStreamReader;
  arrParts : TArray<String>;
  tfsDateFormat : TFormatSettings;
  strLinija : String;
  
begin
  sreStreamReader := TStreamReader.Create(strPath);
  tfsDateFormat := TFormatSettings.Create;
  tfsDateFormat.ShortDateFormat := 'dd/mm/yyyy';
  Self.dicRodjendani.Clear;
  Self.intNextId := 1;
  try
    while not sreStreamReader.EndOfStream do
    begin
      strLinija := sreStreamReader.ReadLine;
        
      arrParts := SplitString(strLinija, '|');
      
      Self.dicRodjendani.Add(StrToInt(arrParts[0]),
        TRodjendan.Create(StrToInt(arrParts[0]), arrParts[1],
        StrToDate(arrParts[2], tfsDateFormat)));
    end;

    if Self.dicRodjendani.Count <> 0 then
      Self.intNextId := (MaxIntValue(Self.dicRodjendani.Keys.ToArray)) + 1;

  finally
    sreStreamReader.Free;
  end;
end;

procedure TRodjendanManager.remove(intId: Integer);
begin
  Self.dicRodjendani[intId].Destroy;
  Self.dicRodjendani.Remove(intId);
end;

procedure TRodjendanManager.remove(strOsoba: String);
var 
  rdjRodjendanTmp : TRodjendan;
begin
  for rdjRodjendanTmp in Self.dicRodjendani.Values do
  begin
    if rdjRodjendanTmp.getOsoba = strOsoba then
      begin
        Self.dicRodjendani.Remove(rdjRodjendanTmp.getId);
        rdjRodjendanTmp.Destroy;
        break;
      end;
  end;
end;

procedure TRodjendanManager.save;
begin
  Self.save(Self.strFilePath);
end;

procedure TRodjendanManager.save(strPath: String);
var
  swrStreamWriter : TStreamWriter;
  rdjRodjendan : TRodjendan;
begin
  swrStreamWriter := TStreamWriter.Create(strPath);
  try
    for rdjRodjendan in Self.dicRodjendani.Values do
    begin
      swrStreamWriter.WriteLine(rdjRodjendan.toFileString);
    end;
  finally
    swrStreamWriter.Free;
  end;
end;

procedure TRodjendanManager.update(intId: Integer; strOsoba: String;
  dteDatum: TDate);
var 
  rdjRodjendan : TRodjendan;
begin
  rdjRodjendan := Self.dicRodjendani[intId];
  rdjRodjendan.setOsoba(strOsoba);
  rdjRodjendan.setDatum(dteDatum);
end;

end.
