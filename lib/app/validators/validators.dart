String? nameValidator(String? value) {
  if (value!.isEmpty) {
    return "*Required field";
  }
  return null;
}

String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return "*Required field";
  } else if (!value.contains((RegExp(r'@')))) {
    return "*Incorrect format";
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value!.length < 8 && !value.contains((RegExp(r'[0-9]')))) {
    return "*Needs at least 8 characters\n" "*Needs at least one number";
  } else if (value.length < 8) {
    return "*Needs at least 8 characters";
  } else if (!value.contains((RegExp(r'[0-9]')))) {
    return "*Needs at least one number";
  }
  return null;
}
