import java.util.Scanner;

public class Hanoi {

    public static void hanoi(int n, String start, String end, String helper) {
        if (n == 1) {
            System.out.println(start + " -> " + end);
        } else {
            hanoi(n - 1, start, helper, end);
            System.out.println(start + " -> " + end);
            hanoi(n - 1, helper, end, start);
        }
    }
    
    public static int userInput() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Geben Sie die Anzahl der Scheiben ein: ");
        return scanner.nextInt();
    }

    public static void main(String[] args) {
        int n = userInput();
        hanoi(n, "A", "C", "B");
    }
}