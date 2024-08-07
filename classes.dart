class Person {
  String name;
  String designation;

  Person(this.name, this.designation);
}

class Student extends Person {
  String classNumber;
  String classSection;
  String rollNumber;

  Student(String name, String designation, this.classNumber, this.classSection,
      this.rollNumber)
      : super("Suheer Khan", "Student");

  //Methods to view/edit Student Details
  //View Marksheet
  //View Attendance
  //View Homework Status
}

class Parent extends Person {
  String relationToStudent;

  Parent(String name, String designation, this.relationToStudent)
      : super("Sohail Ahmed Khan", "Parent");

  //Methods to view/edit Student Details
  //View Marksheet
  //View Attendance
  //View Homework Status
  //View Fees Status
}

class Teacher extends Person {
  String subject;

  Teacher(String name, String designaton, this.subject)
      : super("Sir Bilal", "Teacher");

  //Methods to view and edit
  //Student details
  //Attendance
  //Marksheet
  //Homework status
}
