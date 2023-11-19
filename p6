class Student {
    String name;
    int rollNo;

    // Constructor for Student class
    public Student(String name, int rollNo) {
        this.name = name;
        this.rollNo = rollNo;
    }
}

class Result extends Student {
    int subject1;
    int subject2;
    int subject3;

    // Constructor for Result class
    public Result(String name, int rollNo, int subject1, int subject2, int subject3) {
        super(name, rollNo);
        this.subject1 = subject1;
        this.subject2 = subject2;
        this.subject3 = subject3;
    }

    // Method to get marks for three subjects
    public void getMarks() {
        System.out.println("Marks for " + name + " (Roll No: " + rollNo + ")");
        System.out.println("Subject 1: " + subject1);
        System.out.println("Subject 2: " + subject2);
        System.out.println("Subject 3: " + subject3);
    }
}

class Sports extends Result {
    int sportsPoints;

    // Constructor for Sports class
    public Sports(String name, int rollNo, int subject1, int subject2, int subject3, int sportsPoints) {
        super(name, rollNo, subject1, subject2, subject3);
        this.sportsPoints = sportsPoints;
    }

    // Method to get points obtained in sports
    public void getSportsPoints() {
        System.out.println("Sports points for " + name + " (Roll No: " + rollNo + "): " + sportsPoints);
    }

    // Method to calculate total marks and display result
    public void displayResult() {
        int totalMarks = subject1 + subject2 + subject3 + sportsPoints;
        System.out.println("Total Marks for " + name + " (Roll No: " + rollNo + "): " + totalMarks);

        // Check if the student passes or fails
        if (totalMarks >= 150) {
            System.out.println("Result: Pass");
        } else {
            System.out.println("Result: Fail");
        }
    }
}

public class Main {
    public static void main(String[] args) {
        // Creating three student objects
        Sports student1 = new Sports("John", 101, 75, 80, 90, 15);
        Sports student2 = new Sports("Alice", 102, 85, 95, 70, 20);
        Sports student3 = new Sports("Bob", 103, 60, 75, 80, 25);

        // Displaying marks for three students
        student1.getMarks();
        student2.getMarks();
        student3.getMarks();

        System.out.println();

        // Displaying sports points for three students
        student1.getSportsPoints();
        student2.getSportsPoints();
        student3.getSportsPoints();

        System.out.println();

        // Displaying result for three students
        student1.displayResult();
        student2.displayResult();
        student3.displayResult();
    }
}
