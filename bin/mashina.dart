import 'dart:developer';

class Mashina {
  Mashina({
    required this.marka,
    required this.jyl,
    required this.nomer,
  });

  final String marka;
  final int jyl;
  final String nomer;

  factory Mashina.fromResponse(Map<String, dynamic> json) {
    return Mashina(
      marka: json['marka'],
      jyl: json['jyl'],
      nomer: json['nomer'],
    );
  }
}

Map response = {
  "cars": [
    {"marka": "mers", "jyl": 2025, "nomer": "1111111"},
    {"marka": "mers1", "jyl": 2042, "nomer": "2222222"},
    {"marka": "mers2", "jyl": 2332, "nomer": "3333333"},
    {"marka": "mers3", "jyl": 2112, "nomer": "4444444"},
    {"marka": "mers4", "jyl": 2002, "nomer": "5555555"},
    {"marka": "mers4", "jyl": 2002, "nomer": "9999999"},
  ]
};

void main(List<String> args) {
  final mers1 = Mashina(
    marka: response['cars'][0]["marka"],
    jyl: response["cars"][0]['jyl'],
    nomer: response["cars"][0]['nomer'],
  );

  final mers2 = Mashina(
    marka: response['cars'][1]['marka'],
    jyl: response['cars'][1]['jyl'],
    nomer: response['cars'][1]['nomer'],
  );
  final mers3 = Mashina.fromResponse(response["cars"][2]);
  final mers4 = Mashina.fromResponse(response["cars"][3]);
  final mers5 = Mashina.fromResponse(response["cars"][4]);
  final mers6 = Mashina.fromResponse(response["cars"][5]);

  log(mers1.nomer);
  log(mers2.nomer);
  log(mers3.nomer);
  log(mers4.nomer);
  log(mers5.nomer);
  log(mers6.nomer);
}
