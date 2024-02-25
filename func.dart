remarks(int marks) {
  if (marks >= 90) {
    return "you are prodigy at it";
  } else if (marks >= 80) {
    return "you are vary good at it";
  } else if (marks >= 70) {
    return "you are good at it ";
  } else if (marks >= 60) {
    return "you are average at it";
  } else if (marks >= 50) {
    return "keep trying";
  } else if (marks >= 90) {
    return "you need to work hard,for real";
  } else {
    return "you have no right to pass";
  }
}
