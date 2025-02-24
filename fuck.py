"""
no skidding my niggers!!11!!!!11!!1!!1!1!!1111!11
is just simple odd even num checker make ur own u fucktard
"""

import os
import sys 
import time

if os.name != "nt":
    print("only windows dirty nigger")
    time.sleep(2)
    sys.exit()

import msvcrt

def check(number):
    last_digit = abs(number) % 10
    return "odd" if last_digit in [1, 3, 5, 7, 9] else "even"

def main():
    print("even or odd number checker")
    while True:
        try:
            number = int(input("number : "))
            print(check(number))
        except ValueError:
            os.system("cls")
            print("invalid input, example: 123")
        
        print("Press Space to Try Again or Enter to Close... ", end="", flush=True)
        while True:
            key = msvcrt.getch().decode()
            if key == " " or key == "\r":
                    os.system("cls")
                    print("even or odd number checker")
                    break

        if key == "\r":
            break

if __name__ == "__main__":
    main()

