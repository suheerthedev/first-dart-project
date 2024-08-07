import 'dart:io';

class Student {
  String name = "Suheer";
  String role = 'student';
  String classNumber = "10th";
  String classSection = "A";
  String rollNumber = "30909";
  List<SubjectMarks> marksheet = [
    SubjectMarks(subject: "Maths", marks: 92),
    SubjectMarks(subject: "English", marks: 67),
    SubjectMarks(subject: "Physics", marks: 57)
  ];
  num attendance = 70.0;
  String homeWorkStatus = "Completed";
  String feesStatus = "Pending";

  //To view details
  void viewDetails() {
    print("Details:");
    print("Name: $name");
    print("Class: $classNumber");
    print("Section: $classSection");
    print("Roll Number: $rollNumber");
  }

  //To edit details
  editDetails() {
    print("Enter Updated Name");
    String newName = stdin.readLineSync()!;
    name = newName;

    print("Enter Updated Class Number");
    String newClassNumber = stdin.readLineSync()!;
    classNumber = newClassNumber;

    print("Enter Updated Class Section");
    String newClassSection = stdin.readLineSync()!;
    classSection = newClassSection;

    print("Enter Updated Roll Number");
    String newRollNumber = stdin.readLineSync()!;
    rollNumber = newRollNumber;

    print("Student Details Updated Successfully");
  }

  //To view marksheet
  viewMarksheet() {
    print("Marksheet:");
    for (int i = 0; i < marksheet.length; i++) {
      print("${marksheet[i].subject}: ${marksheet[i].marks}");
    }
  }

  //To view Attendance
  viewAttendance() {
    print("Attendance: $attendance %");
  }

  //To view Homework Status
  viewHomeWorkStatus() {
    print("Homework Status: $homeWorkStatus");
  }
}

class Parent extends Student {
  viewFeesStatus() {
    print("Fees Status: $feesStatus");
  }
}

class Teacher extends Student {
  editMarksheet() {
    for (int i = 0; i < marksheet.length; i++) {
      print("Enter New Marks for ${marksheet[i].subject}");
      int newMarks = int.parse(stdin.readLineSync()!);
      marksheet[i].marks = newMarks;
    }
    print("Marks Updated Successfully");
  }

  editAttendance() {
    print("Enter Updated Attendance");
    num newAttendance = num.parse(stdin.readLineSync()!);
    attendance = newAttendance;
    print("Attendance Updated Successfully");
  }

  editHomeworkStatus() {
    print("Enter Updated Homework Status(Completed/Pending/Late):");
    String newHomeworkStatus = stdin.readLineSync()!;
    homeWorkStatus = newHomeworkStatus;
    print("Homework Status Updated Successfully");
  }
}

//Subject Marks
class SubjectMarks {
  String subject;
  num marks;

  SubjectMarks({required this.subject, required this.marks});
}

class Admin extends Student {
  viewFeesStatus() {
    print("Fees Status: $feesStatus");
  }

  editFeesStatus() {
    print("Enter Updated Fees Status(Recieved/Pending/Late):");
    String newFeesStatus = stdin.readLineSync()!;
    feesStatus = newFeesStatus;
    print("Fees Status Updated");
  }
}
