```markdown
# Decimal to Binary Converter

This simple assembly program converts a decimal number to its binary representation. It uses the x86 assembly language and is intended to run in a DOS environment with the `.model small` memory model.

## Usage
1. Assemble the code using an x86 assembler.
2. Run the executable in a DOS environment.

## Instructions
1. The program prompts the user to enter a decimal number.
2. Input '0' to exit the program.
3. The program converts the entered decimal number to its binary representation.
4. The result is displayed.

## Code Overview
- **Data Section:**
  - `a`: Variable to store the entered decimal number.
  - `buffers`: Array to store the binary representation of the decimal number.
  - `messages`: Array for newline characters.
  - `prompt_msg`: Message prompting the user to enter a decimal number.

- **Code Section:**
  - `main_loop`: Main loop for user input and processing.
  - User input is converted to a binary representation.
  - The binary representation is displayed.
  - The program exits when the user inputs '0'.

- **Exit Procedure:**
  - Displays a confirmation message before exiting.

## How to Run
1. Assemble the code using an x86 assembler (e.g., TASM).
2. Run the generated executable in a DOS environment (e.g., DOSBox).
