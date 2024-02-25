import 'dart:io';

void main() {
  // Parse the JSON data
  List<dynamic> users = [
    {
      "username": "Muhammed razaq",
      "password": "razaq123",
      "crediblity": "good"
    },
    {
      "username": "Muhammed ahmed",
      "password": "ahmed123",
      "crediblity": "mediocre"
    }
  ];

  // Initialize a flag to indicate whether the login was successful
  bool loginSuccessful = false;

  // Loop until the login is successful
  while (!loginSuccessful) {
    // Prompt the user to enter their username and password
    stdout.write('Enter your username: ');
    var enteredUsername = stdin.readLineSync();
    stdout.write('Enter your password: ');
    var enteredPassword = stdin.readLineSync();

    // Loop through each user
    for (var user in users) {
      // Check if the entered username and password match the current user
      if (user['username'] == enteredUsername &&
          user['password'] == enteredPassword) {
        print('Login successful!');

        loginSuccessful = true;
        break;
      }
    }

    // If the login was not successful, prompt the user to try again
    if (!loginSuccessful) {
      print('Login failed. Please try again.');
    }
  }
}
