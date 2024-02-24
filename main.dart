import 'dart:io';

void main() {
  List<Map<String, dynamic>> teachersinfo = [
    {"username": "Razaq ahmed", "password": "razaq123", "crediblity": "good"},
    {
      "username": "Muhammed ahmed",
      "password": "ahmed123",
      "crediblity": "mediocre"
    }
  ];
  List<Map<String, dynamic>> razaqclass = [
    {
      "username": "Rashid khan",
      "password": "rashid123",
      "attendaince": "56%",
      "marks": {"maths": 61, "physics": 64, "chem": 63}
    },
    {
      "username": "Muhammed Murtaza",
      "password": "Murtuza123",
      "attendaince": "69%",
      "marks": {"maths": 71, "physics": 74, "chem": 73}
    },
    {
      "username": "Maaz Arif",
      "password": "Maaz123",
      "attendaince": "86%",
      "marks": {"maths": 81, "physics": 84, "chem": 83}
    }
  ];
  List<Map<String, dynamic>> ahmedclass = [
    {
      "username": "Ali raza",
      "password": "ali123",
      "attendaince": "65%",
      "marks": {"maths": 66, "physics": 68, "chem": 67}
    },
    {
      "username": "Muhammed Nabi",
      "password": "Mnabi123",
      "attendaince": "63%",
      "marks": {"maths": 76, "physics": 77, "chem": 71}
    },
    {
      "username": "Muhammed hammad",
      "password": "hammad123",
      "attendaince": "87%",
      "marks": {"maths": 83, "physics": 87, "chem": 84}
    }
  ];

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
        print("------------------------------------------------------");
      }
    } else if (adminchoice == "2") {
      print("your choose student details");
      print("which class do you wanna view");
      print("1 for Muhammed Razaq's class");
      print("2 for Muhammed ahmed's class");
      stdout.write("view class :");
      var forclass = stdin.readLineSync();
      while (forclass != "1" && forclass != "2") {
        print("please try again");
        stdout.write("please choose the correct class :");
        forclass = stdin.readLineSync();
      }
      if (forclass == "1") {
        print("you choose Muhammed Razaq's class");
        for (var razaqstudent in razaqclass) {
          print("usermane :${razaqstudent["username"]}");
          print("attendance :${razaqstudent["attendaince"]}");
          print("marks :${razaqstudent["marks"]}");
          print("----------------------------------------------------");
        }
      } else {
        print("you choose Muhammed ahmed's class");
        for (var ahmedstudent in ahmedclass) {
          print("usermane :${ahmedstudent["username"]}");
          print("attendance :${ahmedstudent["attendaince"]}");
          print("marks :${ahmedstudent["marks"]}");
          print("----------------------------------------------------");
        }
      }
    } else {
      print("your choose etid");
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
        print("1 for add");
        print("2 for remove");
        stdout.write("what do you want :");
        var redox = stdin.readLineSync();
        while (redox != "1" && redox != "2") {
          print("try again");
          stdout.write("choose the correct choice :");
          redox = stdin.readLineSync();
        }
        if (redox == "1") {
          print("you choose add ");
          stdout.write("noe enter the username you wanna add :");
          var addteacher = stdin.readLineSync();
          stdout.write("noe enter the password you wanna add :");
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
            print("-----------------------------------------------------");
          }
        } else {
          print("you choose remove ");
        }
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
      } else {
        print("you choose student to etid");
      }
    }
  } else if (choice == "teacher") {
    print("you choose $choice");

    stdout.write("Enter your username :");
    var teacherusername = stdin.readLineSync();

    stdout.write("Enter your password :");
    var teacherpassword = stdin.readLineSync();
  } else {
    print("you choose $choice");
  }
}
