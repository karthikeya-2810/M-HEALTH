class rev_request {
  final String corneaid;
  final String imporatnce;
  final String hospital_name;
  final String tissue;
  final String eye_involved;
  final String age;
  final String doctor_name;

  rev_request({
    required this.corneaid,
    required this.imporatnce,
    required this.hospital_name,
    required this.tissue,
    required this.eye_involved,
    required this.age,
    required this.doctor_name,
  });
  static List<rev_request> requests = [
    rev_request(
      age: '25',
      corneaid: 'RQ12345-678-90',
      doctor_name: 'Dr.Prashant Garg',
      eye_involved: 'OD',
      hospital_name: 'LV PrasadHospital,Rayapet,Hyderabad',
      imporatnce: 'HIGH',
      tissue: 'Cornea',
    ),
     rev_request(
      age: '22',
      corneaid: 'RQ12345-910-90',
      doctor_name: 'Dr.Rajeev Pappuru',
      eye_involved: 'Os',
      hospital_name: 'Goutami Hospital,Rayapet,Hyderabad',
      imporatnce: 'MEDIUM',
      tissue: 'Cornea',
    ),
     rev_request(
      age: '35',
      corneaid: 'RQ12345-608-20',
      doctor_name: 'Dr.Prashant Garg',
      eye_involved: 'OD',
      hospital_name: 'LV PrasadHospital,Rayapet,Hyderabad',
      imporatnce: 'MEDIUM',
      tissue: 'Cornea',
    ),
     rev_request(
      age: '29',
      corneaid: 'RQ12345-628-90',
      doctor_name: 'Prashant Garg',
      eye_involved: 'OD',
      hospital_name: 'Mani Hospital,Rayapet,Hyderabad',
      imporatnce: 'LOW',
      tissue: 'Cornea',
    ),
  ];
}
