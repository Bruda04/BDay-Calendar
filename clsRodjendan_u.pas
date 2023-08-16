unit clsRodjendan_u;

interface

uses System.SysUtils, System.DateUtils;

type
  TRodjendan = class
  private
    intId : Integer;
    strOsoba : String;
    dteDatum : TDate;
  public
    constructor Create(intId : Integer; strOsoba : String; dteDatum : TDate);
    procedure setOsoba(strOsoba : String);
    procedure setDatum(dteDatum : TDate);
    function getOsoba() : String;
    function getDatum() : TDate;
    function toFileString() : String;
    function ToString() : String; Override;
    function getId() : Integer;
    function yearsBetween(dteDatum : TDate) : Integer;
  end;

implementation

{ TRodjendan }

constructor TRodjendan.Create(intId : Integer; strOsoba: String; dteDatum: TDate);
begin
  self.intId := intId;
  self.strOsoba := strOsoba;
  self.dteDatum := dteDatum;
end;

function TRodjendan.getDatum: TDate;
begin
  Result := self.dteDatum;
end;

function TRodjendan.getId: Integer;
begin
  Result := self.intId;
end;

function TRodjendan.getOsoba: String;
begin
  Result := self.strOsoba;
end;

procedure TRodjendan.setDatum(dteDatum: TDate);
begin
  self.dteDatum := dteDatum;
end;

procedure TRodjendan.setOsoba(strOsoba : String);
begin
  self.strOsoba := strOsoba;
end;

function TRodjendan.toFileString: String;
begin
  Result := Concat(IntToStr(self.intId), '|', self.strOsoba, '|',
                     FormatDateTime('dd/mm/yyyy', Self.dteDatum));
end;

function TRodjendan.toString: String;
var
  strRet : String;
begin
  strRet := Concat(self.strOsoba, ' - ', FormatDateTime('dd/mm/yyyy', Self.dteDatum));
  Result := strRet;
end;

function TRodjendan.yearsBetween(dteDatum: TDate): Integer;
var
  intYears: Integer;
  dteStartDate: TDateTime;
  dteEndDate: TDateTime;
begin
  dteStartDate := Trunc(Self.dteDatum);
  dteEndDate := Trunc(dteDatum);

  intYears := YearOf(dteEndDate) - YearOf(dteStartDate);

  if (MonthOf(dteEndDate) < MonthOf(dteStartDate)) or
     ((MonthOf(dteEndDate) = MonthOf(dteStartDate)) and (DayOf(dteEndDate) < DayOf(dteStartDate))) then
    Dec(intYears);

  Result := intYears;
end;

end.
