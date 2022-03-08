class Corona {
  Corona({
    required this.countryNm,
    required this.totalCnt,
    required this.recCnt,
    required this.deathCnt,
    required this.isolCnt,
    required this.qurRate,
    required this.incDec,
    required this.incDecK,
    required this.incDecF,
  });
  late final String countryNm;
  late final int totalCnt;
  late final int recCnt;
  late final int deathCnt;
  late final int isolCnt;
  late final int qurRate;
  late final int incDec;
  late final int incDecK;
  late final int incDecF;

  Corona.fromJson(Map<String, dynamic> json) {
    countryNm = json['countryNm'];
    totalCnt = json['totalCnt'];
    recCnt = json['recCnt'];
    deathCnt = json['deathCnt'];
    isolCnt = json['isolCnt'];
    qurRate = json['qurRate'];
    incDec = json['incDec'];
    incDecK = json['incDecK'];
    incDecF = json['incDecF'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['countryNm'] = countryNm;
    _data['totalCnt'] = totalCnt;
    _data['recCnt'] = recCnt;
    _data['deathCnt'] = deathCnt;
    _data['isolCnt'] = isolCnt;
    _data['qurRate'] = qurRate;
    _data['incDec'] = incDec;
    _data['incDecK'] = incDecK;
    _data['incDecF'] = incDecF;
    return _data;
  }
}
