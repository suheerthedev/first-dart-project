import 'classes.dart';
import 'dart:io';

void main() {
  print('Press 1 for Student');
  print('Press 2 for Parent');
  print('Press 3 for Teacher');
  print('Press 4 for Admin');

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    //Student Case Started===================================================
    case 1:
      print("Welcome Student");
      print('');
      print('Press 1 for Student Details');
      print('Press 2 for Marksheet');
      print('Press 3 for Attendance');
      print('Press 4 for Homework Status');

      Student view = Student();
      Student edit = Student();

      int parentChoice = int.parse(stdin.readLineSync()!);

      switch (parentChoice) {
        case 1:
          print('Press 1 to View Your Details');
          print('Press 2 to Edit Your Details');

          int teacherDetailsChoice = int.parse(stdin.readLineSync()!);
          switch (teacherDetailsChoice) {
            case 1:
              view.viewDetails();
              break;
            case 2:
              edit.editDetails();
              break;
            default:
              print('Invalid choice');
          }
        case 2:
          view.viewMarksheet();
          break;
        case 3:
          view.viewAttendance();
          break;
        case 4:
          view.viewHomeWorkStatus();
          break;
        default:
          print('Invalid choice');
      }
      break;
    //Student Case End===================================================

    //Parent Case Start===================================================
    case 2:
      print("Welcome Parent");
      print('');
      print('Press 1 for Student Details');
      print('Press 2 for Student Marksheet');
      print('Press 3 for Student Attendance');
      print('Press 4 for Student Homework Status');
      print('Press 5 for Student Fees Status');

      Parent view = Parent();
      Parent edit = Parent();

      int parentChoice = int.parse(stdin.readLineSync()!);

      switch (parentChoice) {
        case 1:
          print('Press 1 to View Student Details');
          print('Press 2 to Edit Student Details');

          int parentDetailsChoice = int.parse(stdin.readLineSync()!);
          switch (parentDetailsChoice) {
            case 1:
              view.viewDetails();
              break;
            case 2:
              edit.editDetails();
              break;
            default:
              print('Invalid choice');
          }
        case 2:
          view.viewMarksheet();
          break;
        case 3:
          view.viewAttendance();
          break;
        case 4:
          view.viewHomeWorkStatus();
          break;
        case 5:
          view.viewFeesStatus();
        default:
          print('Invalid choice');
      }
      break;
    //Parent Case End===================================================

    //Teacher Case Start===================================================
    case 3:
      print("Welcome Teacher");
      print('');
      print('Press 1 for Student Details');
      print('Press 2 for Student Marksheet');
      print('Press 3 for Student Attendance');
      print('Press 4 for Student Homework Status');

      Teacher view = Teacher();
      Teacher edit = Teacher();

      int teacherChoice = int.parse(stdin.readLineSync()!);

      switch (teacherChoice) {
        //Teacher Student Details Case
        case 1:
          print('Press 1 to View Student Details');
          print('Press 2 to Edit Student Details');

          int teacherDetailsChoice = int.parse(stdin.readLineSync()!);
          switch (teacherDetailsChoice) {
            case 1:
              view.viewDetails();
              break;
            case 2:
              edit.editDetails();
              break;
            default:
              print('Invalid choice');
          }
        //Teacher Marksheet Case
        case 2:
          print('Press 1 to View Marksheet');
          print('Press 2 to Edit Marksheet');

          int teacherMarksheetChoice = int.parse(stdin.readLineSync()!);

          switch (teacherMarksheetChoice) {
            //View Marksheet Case
            case 1:
              view.viewMarksheet();
              break;
            //Edit Marksheet Case
            case 2:
              edit.editMarksheet();
              break;
            default:
              print('Invalid choice');
          }
          break;
        //Teacher Attendance Case
        case 3:
          print('Press 1 to View Attendance');
          print('Press 2 to Edit Attendance');

          int teacherAttendanceChoice = int.parse(stdin.readLineSync()!);

          switch (teacherAttendanceChoice) {
            //View Attendance Case
            case 1:
              view.viewAttendance();
              break;
            //Edit Attendance Case
            case 2:
              edit.editAttendance();
              break;
            default:
              print('Invalid choice');
          }
          break;
        //Teacher Homework Case
        case 4:
          print('Press 1 to View Homework Status');
          print('Press 2 to Edit Homework Status');

          int teacherHomeworkChoice = int.parse(stdin.readLineSync()!);

          switch (teacherHomeworkChoice) {
            //View Homework Status Case
            case 1:
              view.viewHomeWorkStatus();
              break;
            //Edit Homework Status Case
            case 2:
              edit.editHomeworkStatus();
              break;
            default:
              print('Invalid choice');
          }
          break;
        //Default Case
        default:
          print('Invalid choice');
      }
      break;
    //Teacher Case End===================================================

    //Admin Case
    case 4:
      print("Welcome Admin");
      print('');
      print("Press 1 to view Fees Status");
      print("Press 2 to edit Fees Status");

      Admin view = Admin();
      Admin edit = Admin();
      int adminChoice = int.parse(stdin.readLineSync()!);

      switch (adminChoice) {
        //View Fees Status Case
        case 1:
          view.viewFeesStatus();
          break;
        //Edit Fees Status Case
        case 2:
          edit.editFeesStatus();
          break;
      }
      break;
    default:
      print('Invalid choice');
  }
}
