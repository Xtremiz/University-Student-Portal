import "dart:io";

void main() {
  List<Map<String, dynamic>> studentinfo = [
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

  print("Welcome to the class portal");
  print("<teacher> or <student>");
  stdout.write("Enter your choice : ");
  String choice = stdin.readLineSync()!;

  while (choice != "teacher" && choice != "student") {
    print("invalid, try again");
    stdout.write("Enter your choice : ");
    choice = stdin.readLineSync()!;
  }

  print("you chose $choice");
  stdout.write("Enter your username : ");
  String username = stdin.readLineSync()!;
  stdout.write("Enter your Password : ");
  String password = stdin.readLineSync()!;

  bool isTeacher = false;
  String teacherusername = "";
  String teacherpassword = "";

  if (choice == "teacher") {
    isTeacher = true;
    teacherusername = username;
    teacherpassword = password;
  }

  while (true) {
    if (isTeacher &&
        (teacherusername == "Razaq ahmed" && teacherpassword == "razaq123")) {
      print("login successful");
      stdout.write("Enter your choice : ");
      String forteacher = stdin.readLineSync()!;

      if (forteacher == "1") {
        for (var student in studentinfo) {
          // student details
          print("Student Name: ${student["username"]}");
          print("Student Marks: ${student["marks"]}");
          print("-------------------------");
        }
      } else if (forteacher == "2") {
        //attendaince
        for (var classattended in studentinfo) {
          print("${classattended["username"]}:${classattended["attendaince"]}");
        }
      } else if (forteacher == "3") {
        //class activity
        print("Currently, there is no activity.");
        stdout.write(
            "yes for giving the activity and no for the constant result : ");
        String assignment = stdin.readLineSync()!;

        if (assignment == "yes") {
          stdout.write("Assign the assignment: ");
          String assignedassignment = stdin.readLineSync()!;
          print("you just assigned :$assignedassignment to your class");
        } else {
          print(
              "you have 3 days to issue the assignment otherwise you'll be kick from university");
        }
      } else {
        print("invalid choice");
      }
    } else {
      print("invalid login, try again");
      stdout.write("Enter your username : ");
      username = stdin.readLineSync()!;
      stdout.write("Enter your Password : ");
      password = stdin.readLineSync()!;
    }
  }
}
