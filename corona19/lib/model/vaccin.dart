class Vaccine {
  Vaccine({
    required this.countryNm,
    required this.vaccine_1,
    required this.vaccine_2,
    required this.vaccine_3,
  });
  late final String countryNm;
  late final Vaccine_1 vaccine_1;
  late final Vaccine_2 vaccine_2;
  late final Vaccine_3 vaccine_3;

  Vaccine.fromJson(Map<String, dynamic> json) {
    countryNm = json['countryNm'];
    vaccine_1 = Vaccine_1.fromJson(json['vaccine_1']);
    vaccine_2 = Vaccine_2.fromJson(json['vaccine_2']);
    vaccine_3 = Vaccine_3.fromJson(json['vaccine_3']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['countryNm'] = countryNm;
    _data['vaccine_1'] = vaccine_1.toJson();
    _data['vaccine_2'] = vaccine_2.toJson();
    _data['vaccine_3'] = vaccine_3.toJson();
    return _data;
  }
}

class Vaccine_1 {
  Vaccine_1({
    required this.vaccine_1,
    required this.vaccine_1New,
    required this.vaccine_1Old,
  });
  late final int vaccine_1;
  late final int vaccine_1New;
  late final int vaccine_1Old;

  Vaccine_1.fromJson(Map<String, dynamic> json) {
    vaccine_1 = json['vaccine_1'];
    vaccine_1New = json['vaccine_1_new'];
    vaccine_1Old = json['vaccine_1_old'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vaccine_1'] = vaccine_1;
    _data['vaccine_1_new'] = vaccine_1New;
    _data['vaccine_1_old'] = vaccine_1Old;
    return _data;
  }
}

class Vaccine_2 {
  Vaccine_2({
    required this.vaccine_2,
    required this.vaccine_2New,
    required this.vaccine_2Old,
  });
  late final int vaccine_2;
  late final int vaccine_2New;
  late final int vaccine_2Old;

  Vaccine_2.fromJson(Map<String, dynamic> json) {
    vaccine_2 = json['vaccine_2'];
    vaccine_2New = json['vaccine_2_new'];
    vaccine_2Old = json['vaccine_2_old'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vaccine_2'] = vaccine_2;
    _data['vaccine_2_new'] = vaccine_2New;
    _data['vaccine_2_old'] = vaccine_2Old;
    return _data;
  }
}

class Vaccine_3 {
  Vaccine_3({
    required this.vaccine_3,
    required this.vaccine_3New,
    required this.vaccine_3Old,
  });
  late final int vaccine_3;
  late final int vaccine_3New;
  late final int vaccine_3Old;

  Vaccine_3.fromJson(Map<String, dynamic> json) {
    vaccine_3 = json['vaccine_3'];
    vaccine_3New = json['vaccine_3_new'];
    vaccine_3Old = json['vaccine_3_old'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vaccine_3'] = vaccine_3;
    _data['vaccine_3_new'] = vaccine_3New;
    _data['vaccine_3_old'] = vaccine_3Old;
    return _data;
  }
}
