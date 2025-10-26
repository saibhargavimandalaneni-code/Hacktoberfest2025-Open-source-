class Solution {
    public boolean isPalindrome(int x) {
        // Negative numbers are not palindromes
        // Numbers ending with 0 are not palindromes unless the number is 0 itself
        if (x < 0 || (x % 10 == 0 && x != 0)) {
            return false;
        }

        int reversedHalf = 0;
        while (x > reversedHalf) {
            int digit = x % 10;          // Get last digit
            reversedHalf = reversedHalf * 10 + digit;  // Build reversed number
            x = x / 10;                  // Remove last digit
        }

        // For even length numbers: x == reversedHalf
        // For odd length numbers: x == reversedHalf / 10
        return x == reversedHalf || x == reversedHalf / 10;
    }

    // Example test
    public static void main(String[] args) {
        Solution sol = new Solution();
        System.out.println(sol.isPalindrome(121));   // true
        System.out.println(sol.isPalindrome(-121));  // false
        System.out.println(sol.isPalindrome(10));    // false
        System.out.println(sol.isPalindrome(0));     // true
    }
}
