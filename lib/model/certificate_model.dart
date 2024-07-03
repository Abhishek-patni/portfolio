class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'The complete Python Bootcamp From Zero to Hero',
    organization: 'UDEMY',
    date: 'AUG 2023',
    skills: 'Python,Numpy,Panda',
    credential:  '',
  ),
  CertificateModel(
    name: 'The Complete Flutter Bootcamp By Angela Yu',
    organization: 'UDEMY',
    date: 'JUL 2023',
    skills: 'Flutter . iOS Development . Android Development',
    credential:  '',
  ),
  CertificateModel(
    name: 'AWS Bootcamp',
    organization: 'Udemy',
    date: 'JUN 2023',
    skills: 'AWS S3, AWS EC2, AMS Amplify',
    credential:  '',
  ),
  CertificateModel(
    name: 'Salesforce Begginer Guide',
    organization: 'Salesforce',
    date: 'AUG 2023',
    skills: 'Salesforce Environment',
    credential:  '',
  ),
  CertificateModel(
    name: 'ADD 1',
    organization: 'ADD 1',
    date: 'ADD 1',
    skills: 'ADD 1',
    credential:  'ADD 1',
  ),

];
