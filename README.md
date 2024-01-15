# jflex-javascanner
This project implements a lexer for a simple programming language using JavaCC. The lexer recognizes various tokens such as keywords, operators, identifiers, and numbers. The defined tokens are used for subsequent parsing and analysis of the input code.

Usage
To use the lexer in your Java project, follow these steps:

Clone the Repository:

bash
Copy code
git clone https://github.com/your-username/simple-language-lexer.git
cd simple-language-lexer
Include in Your Project:

Copy the Lexer.jj file to your project.
Make sure you have JavaCC installed. If not, you can download it here.
Generate Lexer Code:
Run the following command to generate the lexer code:

bash
Copy code
javacc Lexer.jj
Integrate with Your Code:
Integrate the generated files with your Java project.

Use the Lexer:
Create an instance of the lexer and use it to tokenize your input code.

java
Copy code
// Example Usage in Java Code
import java.io.StringReader;

public class Main {
    public static void main(String[] args) {
        String inputCode = "class MyClass { int x = 42; }";
        Lexer lexer = new Lexer(new StringReader(inputCode));

        try {
            Symbol token;
            do {
                token = lexer.next_token();
                System.out.println(token.toString());
            } while (token.sym != sym.EOF);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
Tokens
class
int
if
return
print
(, ), {, }
+, -, *, /, ^
>, >=, <, <=, !=, ==
true, false
->
=
;
Identifier
Number
