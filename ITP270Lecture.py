  GNU nano 5.9                                                                                                                                           ITP270Lecture2.python *                                                                                                                                                  
#!/usr/bin/python3

print("Welcome to the ITP270 SPRING 2022 Course!")

user_choice = input("Do you want to proceed with the program?[Y/N}")
 
if user_choice == "Y":
        user_name = input("Enter your username: ")
        user_course = input("Enter the name of your course: ")
        print ("Thanks" + user_name + "for taking the course" + user_course + ".")
else:
        Print("Have a good day!")


