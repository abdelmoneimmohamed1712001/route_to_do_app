isValidNumber(String number ){
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  regExp.hasMatch(number);
}