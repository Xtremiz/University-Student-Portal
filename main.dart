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
  stdout.write("choose who you are ");
  print("for teachers type teacher and for students type student");
  var choice = stdin.readLineSync();
  if (choice == "teacher") {
    print("you chose $choice");
    stdout.write("Enter your usermane :");
    var teacherusername = stdin.readLineSync();
    stdout.write("Enter your Password :");
    var password = stdin.readLineSync();
    if (teacherusername == "Salman ali" && password == "salman123") {
      print(
          "Login successfull, for view students details press 1, for view their attendence press 2, for view class activity press 3");
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

    var teacherusername = stdin.readLineSync();
    var password = stdin.readLineSync();
  } else {
    print("invalid request, please try again!");
  }
}
