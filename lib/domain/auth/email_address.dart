class EmailAddress {
  final String value;

  factory EmailAddress(String input){
    return EmailAddress._(validateEmailAddress(input));
  }

  EmailAddress._(this.value);

  @override
  String toString() => 'EmailAddress{value: $value}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

String validateEmailAddress(String input){
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)){
    return input;
  } else {
    throw InvalidEmailException(failedValue: input);
  }
}

class InvalidEmailException implements Exception{
  final String failedValue;
  InvalidEmailException({required this.failedValue});
}
