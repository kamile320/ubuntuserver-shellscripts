while True:
    try:
        print("Enter number type: \n========================\n1 - decimal\n2 - octal\n3 - binary\n4 - hexadecimal\n")
        type = int(input(">>> "))
        #Decimal
        if type == 1:
            try:
                number = int(input("Enter Number: "))
                hexa = hex(number)
                octa = oct(number)
                bina = bin(number)
                print(f'\nConversion of {number} (Decimal):\nHexadecimal: {hexa}\nDecimal: {number}\nOctal: {octa}\nBinary: {bina}\n')
            except:
                print("Something went wrong. [21]\n")
        #Octal
        elif type == 2:
            try:
                number = input("Enter Number: ")
                deci = int(number, base=8)
                bina1 = int(number, base=8)
                bina2 = bin(bina1)
                hexa1 = int(number, base=8)
                hexa2 = hex(hexa1)
                print(f'\nConversion of {number} (Octal):\nHexadecimal: {hexa2}\nDecimal: {deci}\nOctal: {number}\nBinary: {bina2}\n')
            except:
                print("Something went wrong. [22]\n")
        #Binary
        elif type == 3:
            try:
                number = input("Enter Number: ")
                deci = int(number, base=2)
                octa1 = int(number, base=2)
                octa2 = oct(octa1)
                hexa1 = int(number, base=2)
                hexa2 = hex(hexa1)
                print(f'\nConversion of {number} (Binary):\nHexadecimal: {hexa2}\nDecimal: {deci}\nOctal: {octa2}\nBinary: {number}\n')
            except:
                print("Something went wrong. [23]\n")
        #Hexadecimal
        elif type == 4:
            try:
                number = input("Enter Number: ")
                deci = int(number, base=16)
                octa1 = int(number, base=16)
                octa2 = oct(octa1)
                bina1 = int(number, base=16)
                bina2 = bin(bina1)
                print(f'\nConversion of {number} (Hexadecimal):\nHexadecimal: {number}\nDecimal: {deci}\nOctal: {octa2}\nBinary: {bina2}\n')
            except:
                print("Something went wrong. [23]\n")
        #Diag
        elif type == 1+2+3+4:
            print("""
\n
converter.py    v1.0
========================
Converter that converts 
Number from one number 
system to another
                  
Ported from ServerBot project

Error codes:
[ 1] - Possible ValueError
[21] - Decimal ValueError
[22] - Octal ValueError                  
[23] - Binary ValueError
[24] - Hexadecimal ValueError                  
\n""")
        else:
            print("Wrong value. Try again.\n")
    except:
        print("Something went wrong. [1]\n")