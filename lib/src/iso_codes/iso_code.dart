// ignore_for_file: constant_identifier_names

enum IsoCode {
  AF("+93"),
  AX("+358"),
  AL("+355"),
  DZ("+213"),
  AS("+1684"),
  AD("+376"),
  AO("+244"),
  AI("+1264"),
  AQ("+672"),
  AG("+1268"),
  AR("+54"),
  AM("+374"),
  AW("+297"),
  AC("+247"),
  AU("+61"),
  AT("+43"),
  AZ("+994"),
  BS("+1242"),
  BH("+973"),
  BD("+880"),
  BB("+1246"),
  BY("+375"),
  BE("+32"),
  BZ("+501"),
  BJ("+229"),
  BM("+1441"),
  BT("+975"),
  BO("+591"),
  BQ("+599"),
  BA("+387"),
  BW("+267"),
  BR("+55"),
  IO("+246"),
  BN("+673"),
  BG("+359"),
  BF("+226"),
  BI("+257"),
  KH("+855"),
  CM("+237"),
  CA("+1"),
  CW("+599"),
  CV("+238"),
  KY("+1345"),
  CF("+236"),
  TD("+235"),
  CL("+56"),
  CN("+86"),
  CX("+61"),
  CC("+61"),
  CO("+57"),
  KM("+269"),
  CG("+242"),
  CK("+682"),
  CR("+506"),
  HR("+385"),
  CU("+53"),
  CY("+357"),
  CZ("+420"),
  CD("+243"),
  DK("+45"),
  DJ("+253"),
  DM("+1767"),
  DO("+1849"),
  EC("+593"),
  EG("+20"),
  EH("+212"),
  SV("+503"),
  GQ("+240"),
  ER("+291"),
  EE("+372"),
  SZ("+268"),
  TA("+290"),
  ET("+251"),
  FK("+500"),
  FO("+298"),
  FJ("+679"),
  FI("+358"),
  FR("+33"),
  GF("+594"),
  PF("+689"),
  GA("+241"),
  GM("+220"),
  GE("+995"),
  DE("+49"),
  GH("+233"),
  GI("+350"),
  GR("+30"),
  GL("+299"),
  GD("+1473"),
  GP("+590"),
  GU("+1671"),
  GT("+502"),
  GG("+44"),
  GN("+224"),
  GW("+245"),
  GY("+592"),
  HT("+509"),
  VA("+379"),
  HN("+504"),
  HK("+852"),
  HU("+36"),
  IS("+354"),
  IN("+91"),
  ID("+62"),
  IR("+98"),
  IQ("+964"),
  IE("+353"),
  IL("+972"),
  IM("+44"),
  IT("+39"),
  CI("+225"),
  JM("+1876"),
  JP("+81"),
  JE("+44"),
  JO("+962"),
  KZ("+77"),
  KE("+254"),
  KI("+686"),
  KP("+850"),
  KR("+82"),
  XK("+383"),
  KW("+965"),
  KG("+996"),
  LA("+856"),
  LV("+371"),
  LB("+961"),
  LS("+266"),
  LR("+231"),
  LY("+218"),
  LI("+423"),
  LT("+370"),
  LU("+352"),
  MO("+853"),
  MG("+261"),
  MW("+265"),
  MY("+60"),
  MV("+960"),
  ML("+223"),
  MT("+356"),
  MH("+692"),
  MQ("+596"),
  MR("+222"),
  MU("+230"),
  YT("+262"),
  MX("+52"),
  FM("+691"),
  MD("+373"),
  MC("+377"),
  MN("+976"),
  ME("+382"),
  MS("+1664"),
  MA("+212"),
  MZ("+258"),
  MM("+95"),
  NA("+264"),
  NR("+674"),
  NP("+977"),
  NL("+31"),
  AN("+599"),
  NC("+687"),
  NZ("+64"),
  NI("+505"),
  NE("+227"),
  NG("+234"),
  NU("+683"),
  NF("+672"),
  MK("+389"),
  MP("+1670"),
  NO("+47"),
  OM("+968"),
  PK("+92"),
  PW("+680"),
  PS("+970"),
  PA("+507"),
  PG("+675"),
  PY("+595"),
  PE("+51"),
  PH("+63"),
  PN("+872"),
  PL("+48"),
  PT("+351"),
  PR("+1939"),
  QA("+974"),
  RE("+262"),
  RO("+40"),
  RU("+7"),
  RW("+250"),
  BL("+590"),
  SH("+290"),
  KN("+1869"),
  LC("+1758"),
  MF("+590"),
  PM("+508"),
  VC("+1784"),
  WS("+685"),
  SM("+378"),
  ST("+239"),
  SA("+966"),
  SN("+221"),
  RS("+381"),
  SC("+248"),
  SL("+232"),
  SG("+65"),
  SX("+1721"),
  SK("+421"),
  SI("+386"),
  SB("+677"),
  SO("+252"),
  ZA("+27"),
  GS("+500"),
  SS("+211"),
  ES("+34"),
  LK("+94"),
  SD("+249"),
  SR("+597"),
  SJ("+47"),
  SE("+46"),
  CH("+41"),
  SY("+963"),
  TW("+886"),
  TJ("+992"),
  TZ("+255"),
  TH("+66"),
  TL("+670"),
  TG("+228"),
  TK("+690"),
  TO("+676"),
  TT("+1868"),
  TN("+216"),
  TR("+90"),
  TM("+993"),
  TC("+1649"),
  TV("+688"),
  UG("+256"),
  UA("+380"),
  AE("+971"),
  GB("+44"),
  US("+1"),
  UY("+598"),
  UZ("+998"),
  VU("+678"),
  VE("+58"),
  VN("+84"),
  VG("+1284"),
  VI("+1340"),
  WF("+681"),
  YE("+967"),
  ZM("+260"),
  ZW("+263");

  const IsoCode(this.dialCode);
  final String dialCode;
  static IsoCode fromJson(String isoCodeStr) {
    final isoCode = isoCodeConversionMap[isoCodeStr];
    if (isoCode == null) {
      throw 'Iso code not found $isoCodeStr ';
    }
    return isoCode;
  }

  static IsoCode? fromDialCode(String dialCode) {
    try {
      IsoCode isoCode =
          IsoCode.values.firstWhere((element) => element.dialCode == dialCode);
      return isoCode;
    } catch (e) {
      return null;
    }
  }

  String toJson() => name;
}

const isoCodeConversionMap = {
  "AC": IsoCode.AC,
  "AD": IsoCode.AD,
  "AE": IsoCode.AE,
  "AF": IsoCode.AF,
  "AG": IsoCode.AG,
  "AI": IsoCode.AI,
  "AL": IsoCode.AL,
  "AM": IsoCode.AM,
  "AO": IsoCode.AO,
  "AR": IsoCode.AR,
  "AS": IsoCode.AS,
  "AT": IsoCode.AT,
  "AU": IsoCode.AU,
  "AW": IsoCode.AW,
  "AX": IsoCode.AX,
  "AZ": IsoCode.AZ,
  "BA": IsoCode.BA,
  "BB": IsoCode.BB,
  "BD": IsoCode.BD,
  "BE": IsoCode.BE,
  "BF": IsoCode.BF,
  "BG": IsoCode.BG,
  "BH": IsoCode.BH,
  "BI": IsoCode.BI,
  "BJ": IsoCode.BJ,
  "BL": IsoCode.BL,
  "BM": IsoCode.BM,
  "BN": IsoCode.BN,
  "BO": IsoCode.BO,
  "BQ": IsoCode.BQ,
  "BR": IsoCode.BR,
  "BS": IsoCode.BS,
  "BT": IsoCode.BT,
  "BW": IsoCode.BW,
  "BY": IsoCode.BY,
  "BZ": IsoCode.BZ,
  "CA": IsoCode.CA,
  "CC": IsoCode.CC,
  "CD": IsoCode.CD,
  "CF": IsoCode.CF,
  "CG": IsoCode.CG,
  "CH": IsoCode.CH,
  "CI": IsoCode.CI,
  "CK": IsoCode.CK,
  "CL": IsoCode.CL,
  "CM": IsoCode.CM,
  "CN": IsoCode.CN,
  "CO": IsoCode.CO,
  "CR": IsoCode.CR,
  "CU": IsoCode.CU,
  "CV": IsoCode.CV,
  "CX": IsoCode.CX,
  "CY": IsoCode.CY,
  "CZ": IsoCode.CZ,
  "DE": IsoCode.DE,
  "DJ": IsoCode.DJ,
  "DK": IsoCode.DK,
  "DM": IsoCode.DM,
  "DO": IsoCode.DO,
  "DZ": IsoCode.DZ,
  "EC": IsoCode.EC,
  "EE": IsoCode.EE,
  "EG": IsoCode.EG,
  "EH": IsoCode.EH,
  "ER": IsoCode.ER,
  "ES": IsoCode.ES,
  "ET": IsoCode.ET,
  "FI": IsoCode.FI,
  "FJ": IsoCode.FJ,
  "FK": IsoCode.FK,
  "FM": IsoCode.FM,
  "FO": IsoCode.FO,
  "FR": IsoCode.FR,
  "GA": IsoCode.GA,
  "GB": IsoCode.GB,
  "GD": IsoCode.GD,
  "GE": IsoCode.GE,
  "GF": IsoCode.GF,
  "GG": IsoCode.GG,
  "GH": IsoCode.GH,
  "GI": IsoCode.GI,
  "GL": IsoCode.GL,
  "GM": IsoCode.GM,
  "GN": IsoCode.GN,
  "GP": IsoCode.GP,
  "GQ": IsoCode.GQ,
  "GR": IsoCode.GR,
  "GT": IsoCode.GT,
  "GU": IsoCode.GU,
  "GW": IsoCode.GW,
  "GY": IsoCode.GY,
  "HK": IsoCode.HK,
  "HN": IsoCode.HN,
  "HR": IsoCode.HR,
  "HT": IsoCode.HT,
  "HU": IsoCode.HU,
  "ID": IsoCode.ID,
  "IE": IsoCode.IE,
  "IL": IsoCode.IL,
  "IM": IsoCode.IM,
  "IN": IsoCode.IN,
  "IO": IsoCode.IO,
  "IQ": IsoCode.IQ,
  "IR": IsoCode.IR,
  "IS": IsoCode.IS,
  "IT": IsoCode.IT,
  "JE": IsoCode.JE,
  "JM": IsoCode.JM,
  "JO": IsoCode.JO,
  "JP": IsoCode.JP,
  "KE": IsoCode.KE,
  "KG": IsoCode.KG,
  "KH": IsoCode.KH,
  "KI": IsoCode.KI,
  "KM": IsoCode.KM,
  "KN": IsoCode.KN,
  "KP": IsoCode.KP,
  "KR": IsoCode.KR,
  "KW": IsoCode.KW,
  "KY": IsoCode.KY,
  "KZ": IsoCode.KZ,
  "LA": IsoCode.LA,
  "LB": IsoCode.LB,
  "LC": IsoCode.LC,
  "LI": IsoCode.LI,
  "LK": IsoCode.LK,
  "LR": IsoCode.LR,
  "LS": IsoCode.LS,
  "LT": IsoCode.LT,
  "LU": IsoCode.LU,
  "LV": IsoCode.LV,
  "LY": IsoCode.LY,
  "MA": IsoCode.MA,
  "MC": IsoCode.MC,
  "MD": IsoCode.MD,
  "ME": IsoCode.ME,
  "MF": IsoCode.MF,
  "MG": IsoCode.MG,
  "MH": IsoCode.MH,
  "MK": IsoCode.MK,
  "ML": IsoCode.ML,
  "MM": IsoCode.MM,
  "MN": IsoCode.MN,
  "MO": IsoCode.MO,
  "MP": IsoCode.MP,
  "MQ": IsoCode.MQ,
  "MR": IsoCode.MR,
  "MS": IsoCode.MS,
  "MT": IsoCode.MT,
  "MU": IsoCode.MU,
  "MV": IsoCode.MV,
  "MW": IsoCode.MW,
  "MX": IsoCode.MX,
  "MY": IsoCode.MY,
  "MZ": IsoCode.MZ,
  "NA": IsoCode.NA,
  "NC": IsoCode.NC,
  "NE": IsoCode.NE,
  "NF": IsoCode.NF,
  "NG": IsoCode.NG,
  "NI": IsoCode.NI,
  "NL": IsoCode.NL,
  "NO": IsoCode.NO,
  "NP": IsoCode.NP,
  "NR": IsoCode.NR,
  "NU": IsoCode.NU,
  "NZ": IsoCode.NZ,
  "OM": IsoCode.OM,
  "PA": IsoCode.PA,
  "PE": IsoCode.PE,
  "PF": IsoCode.PF,
  "PG": IsoCode.PG,
  "PH": IsoCode.PH,
  "PK": IsoCode.PK,
  "PL": IsoCode.PL,
  "PM": IsoCode.PM,
  "PR": IsoCode.PR,
  "PS": IsoCode.PS,
  "PT": IsoCode.PT,
  "PW": IsoCode.PW,
  "PY": IsoCode.PY,
  "QA": IsoCode.QA,
  "RE": IsoCode.RE,
  "RO": IsoCode.RO,
  "RS": IsoCode.RS,
  "RU": IsoCode.RU,
  "RW": IsoCode.RW,
  "SA": IsoCode.SA,
  "SB": IsoCode.SB,
  "SC": IsoCode.SC,
  "SD": IsoCode.SD,
  "SE": IsoCode.SE,
  "SG": IsoCode.SG,
  "SH": IsoCode.SH,
  "SI": IsoCode.SI,
  "SJ": IsoCode.SJ,
  "SK": IsoCode.SK,
  "SL": IsoCode.SL,
  "SM": IsoCode.SM,
  "SN": IsoCode.SN,
  "SO": IsoCode.SO,
  "SR": IsoCode.SR,
  "SS": IsoCode.SS,
  "ST": IsoCode.ST,
  "SV": IsoCode.SV,
  "SX": IsoCode.SX,
  "SY": IsoCode.SY,
  "SZ": IsoCode.SZ,
  "TA": IsoCode.TA,
  "TC": IsoCode.TC,
  "TD": IsoCode.TD,
  "TG": IsoCode.TG,
  "TH": IsoCode.TH,
  "TJ": IsoCode.TJ,
  "TK": IsoCode.TK,
  "TL": IsoCode.TL,
  "TM": IsoCode.TM,
  "TN": IsoCode.TN,
  "TO": IsoCode.TO,
  "TR": IsoCode.TR,
  "TT": IsoCode.TT,
  "TV": IsoCode.TV,
  "TW": IsoCode.TW,
  "TZ": IsoCode.TZ,
  "UA": IsoCode.UA,
  "UG": IsoCode.UG,
  "US": IsoCode.US,
  "UY": IsoCode.UY,
  "UZ": IsoCode.UZ,
  "VA": IsoCode.VA,
  "VC": IsoCode.VC,
  "VE": IsoCode.VE,
  "VG": IsoCode.VG,
  "VI": IsoCode.VI,
  "VN": IsoCode.VN,
  "VU": IsoCode.VU,
  "WF": IsoCode.WF,
  "WS": IsoCode.WS,
  "XK": IsoCode.XK,
  "YE": IsoCode.YE,
  "YT": IsoCode.YT,
  "ZA": IsoCode.ZA,
  "ZM": IsoCode.ZM,
  "ZW": IsoCode.ZW,
};
