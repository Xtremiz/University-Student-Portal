import 'dart:io';

void main() {
  List<Map<String, dynamic>> teachersinfo = [
    {"username": "Bilal Rehman", "password": "bilal123", "crediblity": "good"},
    {
      "username": "Muhammed ahmed",
      "password": "ahmed123",
      "crediblity": "mediocre"
    }
  ];
  List<Map<String, dynamic>> bilalclass = [
    {
      "username": "Rashid khan",
      "password": "rashid123",
      "fees": "paid",
      "attendaince": "56%",
      "marks": 59
    },
    {
      "username": "Muhammed Murtuza",
      "password": "Murtuza123",
      "fees": "unpaid",
      "attendaince": "69%",
      "marks": 65
    },
    {
      "username": "Maaz Arif",
      "password": "maaz123",
      "fees": "paid",
      "attendaince": "86%",
      "marks": 73
    }
  ];
  List<Map<String, dynamic>> ahmedclass = [
    {
      "username": "Ali raza",
      "password": "ali123",
      "fees": "unpaid",
      "attendaince": "65%",
      "marks": 76
    },
    {
      "username": "Muhammed Nabi",
      "password": "Mnabi123",
      "fees": "paid",
      "attendaince": "63%",
      "marks": 75
    },
    {
      "username": "Muhammed hammad",
      "password": "hammad123",
      "fees": "halfpaid",
      "attendaince": "87%",
      "marks": 83
    }
  ];
  List<Map<String, dynamic>> allstudents = [];
  allstudents.addAll(bilalclass);
  allstudents.addAll(ahmedclass);

  print("-------------WELCOME------------");
  print("what do you want to access");
  print("<admin> or <teacher> or <student>");
  stdout.write("Enter your choice :");
  var choice = stdin.readLineSync();
  while (choice != "admin" && choice != "teacher" && choice != "student") {
    print("please try again");
    stdout.write("please choose the correct choice :");
    choice = stdin.readLineSync();
  }
  if (choice == "admin") {
    print("WELCOME admin");
    print("you choose $choice");
    print("for more accessbility");
    print("1 for teachers detail");
    print("2 for student details");
    print("3 for edit these details");

    stdout.write("Enter your choice :");
    var adminchoice = stdin.readLineSync();
    while (adminchoice != "1" && adminchoice != "2" && adminchoice != "3") {
      //admin choice
      print("please try again");
      stdout.write("please choose the correct choice :");
      choice = stdin.readLineSync();
    }
    if (adminchoice == "1") {
      print("your choose teacher details");
      for (var teachers in teachersinfo) {
        print("teachers username: ${teachers["username"]}");
        print("teacher crediblity: ${teachers["crediblity"]}");
        print(" ");
      }
    } else if (adminchoice == "2") {
      print("your choose student details");
      print("which class do you wanna view");
      print("1 for Bilal Rehman's class");
      print("2 for Muhammed ahmed's class");
      stdout.write("view class :");
      var forclass = stdin.readLineSync();
      while (forclass != "1" && forclass != "2") {
        print("please try again");
        stdout.write("please choose the correct class :");
        forclass = stdin.readLineSync();
      }
      if (forclass == "1") {
        print("you choose Bilal Rehman's class");
        for (var razaqstudent in bilalclass) {
          print("usermane :${razaqstudent["username"]}");
          print("attendance :${razaqstudent["attendaince"]}");
          print("marks :${razaqstudent["marks"]}");
          print(" ");
        }
      } else {
        print("you choose Muhammed ahmed's class");
        for (var ahmedstudent in ahmedclass) {
          print("usermane :${ahmedstudent["username"]}");
          print("attendance :${ahmedstudent["attendaince"]}");
          print("marks :${ahmedstudent["marks"]}");
          print(" ");
        }
      }
    } else {
      print("your choose edit");
      print("what do you wanna edit");
      print("1 for teachers");
      print("2 for student");
      stdout.write("Enter your etid choice :");
      var etidchoice = stdin.readLineSync();
      while (etidchoice != "1" && etidchoice != "2") {
        print("try again");
        stdout.write("choose the correct etid choice :");
        etidchoice = stdin.readLineSync();
      }
      if (etidchoice == "1") {
        print("you choose teacher to etid");
        print("+ for add");
        print("- for remove");
        stdout.write("what do you want :");
        var redox = stdin.readLineSync();
        while (redox != "+" && redox != "-") {
          print("try again");
          stdout.write("choose the correct choice :");
          redox = stdin.readLineSync();
        }
        if (redox == "+") {
          print("you choose add ");
          stdout.write("Existing list :");
          for (var teachers in teachersinfo) {
            print("username : ${teachers["username"]}");
            print("crediblity : ${teachers["crediblity"]}");
            print(" ");
          }
          stdout.write("now enter the username you want to add :");
          var addteacher = stdin.readLineSync();
          stdout.write("now enter the password you want to add :");
          var addteapass = stdin.readLineSync();
          Map<String, dynamic> newteacher = {
            "username": addteacher,
            "password": addteapass,
            "crediblity": "not yet"
          };
          teachersinfo.add(newteacher);
          for (var allteachers in teachersinfo) {
            print("username: ${allteachers["username"]}");
            print("crediblity: ${allteachers["crediblity"]}");
            print(" ");
          }
        } else {
          print("you choose remove ");
          print("Existing list");
          for (var teachers in teachersinfo) {
            print("teachers username: ${teachers["username"]}");
            print("teacher crediblity: ${teachers["crediblity"]}");
            print(" ");
            stdout.write("Enter the username you want to remove :");
          }
          var removetea = stdin.readLineSync();
          while (removetea != "Bilal Rehman" && removetea != "Muhammed ahmed") {
            print("try again");
            stdout.write("please choose the correct one :");
            removetea = stdin.readLineSync();
          }
          teachersinfo.removeWhere((user) => user["username"] == removetea);
          print(teachersinfo);
        }
      } else {
        print("you choose student to edit");
        print("which class do you want to select:-");
        print("1 for Bilal Rehman class");
        print("2 for Muhammed ahmed class");
        stdout.write("you choose :");
        var chooseclass = stdin.readLineSync();
        while (chooseclass != "1" && chooseclass != "2") {
          print("try again");
          stdout.write("choose the correct choice");
          chooseclass = stdin.readLineSync();
        }
        if (chooseclass == "1") {
          print("you choose Bilal Rehman'class ");
          print("what do you want to ");
          print("+ for add");
          print("- for remove");
          stdout.write("Enter your choice :");
          var bilalclasschoice = stdin.readLineSync();
          while (bilalclasschoice != "+" && bilalclasschoice != "-") {
            print("try again");
            stdout.write("choose the correct choice");
            bilalclasschoice = stdin.readLineSync();
          }
          if (bilalclasschoice == "+") {
            print("you choose add");
            stdout.write("Existing List :");
            for (var student1 in bilalclass) {
              print("username : ${student1["username"]}");
              print("attendance : ${student1["attendaince"]}");
              print("marks : ${student1["marks"]}");
              print(" ");
            }
            stdout.write("now enter the username you want to add :");
            var addname1 = stdin.readLineSync();
            stdout.write("now enter the password you want to add :");
            var addpass1 = stdin.readLineSync();
            Map<String, dynamic> newstudent1 = {
              "username": addname1,
              "password": addpass1,
              "attendaince": "not yet",
              "marks": "not yet"
            };
            bilalclass.add(newstudent1);
            print("Existing List :");
            for (var student1 in bilalclass) {
              print("username : ${student1["username"]}");
              print("attendance : ${student1["attendaince"]}");
              print("marks : ${student1["marks"]}");
              print(" ");
            }
          } else {
            print("you choose remove");
            print("Existing list :");
            for (var bilalstudent in bilalclass) {
              print("usermane :${bilalstudent["username"]}");
              print("attendance :${bilalstudent["attendaince"]}");
              print("marks :${bilalstudent["marks"]}");
              print(" ");
            }
            stdout.write("Enter the username you want to remove :");
            var remstu1 = stdin.readLineSync();
            while (remstu1 != "Rashid khan" &&
                remstu1 != "Muhammed Murtaza" &&
                remstu1 != "Maaz Arif") {
              print("try again");
              stdout.write("please type the correct name :");
              remstu1 = stdin.readLineSync();
            }
            bilalclass.removeWhere((element) => element["username"] == remstu1);
            print(bilalclass);
          }
        } else {
          print("you choose Muhammed ahmed'class ");
          print("what do you want to ");
          print("+ for add");
          print("- for remove");
          stdout.write("Enter your choice :");
          var ahmedclasschoice = stdin.readLineSync();
          while (ahmedclasschoice != "+" && ahmedclasschoice != "-") {
            print("try again");
            stdout.write("choose the correct choice");
            ahmedclasschoice = stdin.readLineSync();
          }
          if (ahmedclasschoice == "+") {
            print("you choose add");
            stdout.write("Existing List :");
            for (var student1 in ahmedclass) {
              print("username : ${student1["username"]}");
              print("attendance : ${student1["attendaince"]}");
              print("marks : ${student1["marks"]}");
              print(" ");
            }
            stdout.write("now enter the username you want to add :");
            var addname2 = stdin.readLineSync();
            stdout.write("now enter the password you want to add :");
            var addpass2 = stdin.readLineSync();
            Map<String, dynamic> newstudent2 = {
              "username": addname2,
              "password": addpass2,
              "attendaince": "not yet",
              "marks": "not yet"
            };
            ahmedclass.add(newstudent2);
            for (var student1 in bilalclass) {
              print("username : ${student1["username"]}");
              print("attendance : ${student1["attendaince"]}");
              print("marks : ${student1["marks"]}");
              print(" ");
            }
          } else {
            print("you choose remove");
            print("Existing list :");
            for (var ahmedstudent in ahmedclass) {
              print("usermane :${ahmedstudent["username"]}");
              print("attendance :${ahmedstudent["attendaince"]}");
              print("marks :${ahmedstudent["marks"]}");
              print(" ");
            }
            stdout.write("Enter the username you want to remove :");
            var remstu2 = stdin.readLineSync();
            while (remstu2 != "Ali raza" &&
                remstu2 != "Muhammed Nabi" &&
                remstu2 != "Muhammed hammad") {
              print("try again");
              stdout.write("please type the correct name :");
              remstu2 = stdin.readLineSync();
            }
            ahmedclass.removeWhere((element) => element["username"] == remstu2);
            print(ahmedclass);
          }
        }
      }
    }
  } else if (choice == "teacher") {
    print("you choose $choice");
    bool loginSuccessful = false;

    while (!loginSuccessful) {
      stdout.write('Enter your username :');
      var enteredUsername = stdin.readLineSync();
      stdout.write('Enter your password :');
      var enteredPassword = stdin.readLineSync();

      for (var user in teachersinfo) {
        if (user['username'] == enteredUsername &&
            user['password'] == enteredPassword) {
          print('Login successful!');
          print("WELCOME $enteredUsername");
          print("1 for view your class");
          print("2 for edit your class");
          stdout.write("What do you want to choose :");
          var teachoice = stdin.readLineSync();
          while (teachoice != "1" && teachoice != "2") {
            print("try again");
            stdout.write("please choose the correct choice :");
            teachoice = stdin.readLineSync();
          }
          if (teachoice == "1") {
            if (enteredUsername == "Bilal Rehman") {
              for (var students in bilalclass) {
                print("username: ${students["username"]}");
                print("attendance: ${students["attendaince"]}");
                print("marks: ${students["marks"]}");
                print("fees : ${students["fees"]}");
                print(" ");
              }
            } else {
              for (var students in ahmedclass) {
                print("username: ${students["username"]}");
                print("attendance: ${students["attendaince"]}");
                print("marks: ${students["marks"]}");
                print("fees : ${students["fees"]}");
                print(" ");
              }
            }
            break;
          } else {
            if (enteredUsername == "Bilal Rehman") {
              print("you choose edit");
              print("Note : you only able to edit marks");
              print("Existing list");
              for (var student in bilalclass) {
                print("username : ${student["username"]}");
                print("attendance : ${student["attendaince"]}");
                print("marks : ${student["marks"]}");
                print(" ");
              }
              stdout.write("type [confirm] to edit :");
              var confirmatry0 = stdin.readLineSync();
              while (confirmatry0 != "confirm") {
                print("try again");
                stdout.write("Enter [confirm] to proceed :");
                confirmatry0 = stdin.readLineSync();
              }
              if (confirmatry0 == "confirm") {
                bool found = false;
                while (!found) {
                  stdout.write("Enter the username to edit marks :");
                  String? username = stdin.readLineSync();
                  if (username != null) {
                    for (var student in bilalclass) {
                      if (student['username'] == username) {
                        print(
                            "Current marks for $username: ${student['marks']}");
                        stdout.write("Enter new marks :");
                        int newMarks = int.parse(stdin.readLineSync()!);
                        student['marks'] = newMarks;
                        print("Marks updated successfully!");
                        found = true;
                        break;
                      }
                    }

                    if (!found) {
                      print("User '$username' not found! Please try again.");
                    } else {
                      print("Updated class record:");
                      for (var student in bilalclass) {
                        print("username :${student["username"]}");
                        print("attendance :${student["attendaince"]}");
                        print("marks :${student["marks"]}");
                        print(" ");
                      }
                    }
                  }
                }
              }
            } else {
              print("you choose edit");
              print("Note : you only able to edit marks");
              print("Existing list");
              for (var student in ahmedclass) {
                print("username : ${student["username"]}");
                print("attendance : ${student["attendaince"]}");
                print("marks : ${student["marks"]}");
                print(" ");
              }
              stdout.write("type [confirm] to edit :");
              var confirmatry1 = stdin.readLineSync();
              while (confirmatry1 != "confirm") {
                print("try again");
                stdout.write("Enter [confirm] to proceed :");
                confirmatry1 = stdin.readLineSync();
              }
              if (confirmatry1 == "confirm") {
                bool found = false;
                while (!found) {
                  stdout.write("Enter the username to edit marks :");
                  String? username = stdin.readLineSync();
                  if (username != null) {
                    for (var student in ahmedclass) {
                      if (student['username'] == username) {
                        print(
                            "Current marks for $username: ${student['marks']}");
                        stdout.write("Enter new marks :");
                        int newMarks = int.parse(stdin.readLineSync()!);
                        student['marks'] = newMarks;
                        print("Marks updated successfully!");
                        found = true;
                        break;
                      }
                    }

                    if (!found) {
                      print("User '$username' not found! Please try again.");
                    } else {
                      print("Updated class record:");
                      for (var student in ahmedclass) {
                        print("username :${student["username"]}");
                        print("attendance :${student["attendaince"]}");
                        print("marks :${student["marks"]}");
                        print(" ");
                      }
                    }
                  }
                }
              }

              void printStudents(List<Map<String, dynamic>> students) {
                for (var student in students) {
                  print("Username: ${student['username']}");
                  print("Password: ${student['password']}");
                  print("Attendance: ${student['attendance']}");
                  print("Marks: ${student['marks']}");
                  print("");
                }
              }
            }

            loginSuccessful = true;
            break;
          }
        }

        if (!loginSuccessful) {
          print('Login failed. Please try again.');
        }
      }
    }
  } else {
    print("you choose $choice");
    bool loginSuccessful = false;

    while (!loginSuccessful) {
      stdout.write('Enter your username :');
      var studentUsername = stdin.readLineSync();
      stdout.write('Enter your password :');
      var studentPassword = stdin.readLineSync();

      for (var student in allstudents) {
        if (student['username'] == studentUsername &&
            student['password'] == studentPassword) {
          print('Login successful!');
          print("WELCOME $studentUsername");
          print("1 for your fee chalan");
          print("2 for your assignment");
          print("3 for your marks");
          stdout.write("Enter your choice :");
          var studentchoice = stdin.readLineSync();
          while (studentchoice != "1" &&
              studentchoice != "2" &&
              studentchoice != "3") {
            print("try again");
            stdout.write("Enter the correct choice :");
            studentchoice = stdin.readLineSync();
          }
          if (studentchoice == "1") {
            for (var student in allstudents) {
              if (student['username'] == studentUsername) {
                if (student["fees"] == "paid") {
                  print("your fees is paid");
                } else if (student["fees"] == "halfpaid") {
                  print(
                      "you have to paid the rest of half of your fees by next 2 month, after that you will be withdrawal from the class");
                } else {
                  print(
                      "you have to paid your fees by next month, after that you will be withdrawal from the class");
                }
                break;
              }
            }
          } else if (studentchoice == "2") {
            stdout.write("Enter [confirm] to get assigment :");
            var assignment = stdin.readLineSync();
            while (assignment != "confirm") {
              print("try again");
              stdout.write("Enter the correct choice :");
              assignment = stdin.readLineSync();
            }
            if (assignment == "confirm") {
              print("Assigment is coimng soon, stay tuned ");
            }
          } else {
            for (var student in allstudents) {
              if (student['username'] == studentUsername) {
                print("your marks :${student["marks"]}");
                break;
              }
            }
          }
          loginSuccessful = true;
          break;
        }
      }

      if (!loginSuccessful) {
        print('Login failed. Please try again.');
      }
    }
  }
}
