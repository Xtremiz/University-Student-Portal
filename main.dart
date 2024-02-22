import "dart:io";

void main() {
  List studentinfo = [
    {
      "username": "Rashid khan",
      "password": "rashid123",
      "attendaince": "56%",
      "marks": [
        {"maths": 61, "physics": 64, "chem": 63}
      ]
    },
    {
      "username": "Muhammed Murtaza",
      "password": "Murtuza123",
      "attendaince": "69%",
      "marks": [
        {"maths": 71, "physics": 74, "chem": 73}
      ]
    },
    {
      "username": "Maaz Arif",
      "password": "Maaz123",
      "attendaince": "86%",
      "marks": [
        {"maths": 81, "physics": 84, "chem": 83}
      ]
    }
  ];
  print("Welcome to the class portal");
  print("<teacher> or <student>");
  var choice = stdin.readLineSync();
  if (choice == "teacher") {
    print("you chose $choice");
    stdout.write("Enter your usermane :");
    var teacherusername = stdin.readLineSync();
    stdout.write("Enter your Password :");
    var teacherpassword = stdin.readLineSync();
    if (teacherusername == "Razaq ahmed" && teacherpassword == "razaq123") {
      print(
          "--------------------------Login successfull------------------------- ");
      print("1 for student details");
      print("2 for class attendence");
      print("3 for view class assignment");
      var forteacher = stdin.readLineSync();
      if (forteacher == "1") {
        for (var student in studentinfo) {
          // student details
          print("Student Name: ${student["username"]}");
          print("Student Name: ${student["marks"]}");
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
            "yes for giving the activity and no for the constant result :");
        var assignment = stdin.readLineSync();
        if (assignment == "yes") {
          stdout.write("Assign the assignment:");
          var assignedassignment = stdin.readLineSync();
          print("you just assigned :$assignedassignment to your class");
        } else {
          print(
              "you have 3 days to issue the assignment otherwise you'll be kick from university");
        }
      }
    } else {
      print("invalid choice");
    }
  } else if (choice == "student") {
    print("you chose $choice");
    stdout.write("Enter your username :");
    var studentusername = stdin.readLineSync();
    stdout.write("Enter your password :");
    var studentpassword = stdin.readLineSync();
  } else {
    print("invalid request, please try again!");
  }
}
