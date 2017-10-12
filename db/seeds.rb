# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Bill", email: "s1122123@student.rmit.edu.au", gender: "Man",
            preference: "Women", dob: "1997-09-01", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Jessica", email: "s3333333@student.rmit.edu.au", gender: "Woman",
            preference: "Women", dob: "1996-05-02", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Matt", email: "s2222222@student.rmit.edu.au", gender: "Man",
            preference: "Both", dob: "1991-01-01", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Lisa", email: "s4444444@student.rmit.edu.au", gender: "Woman",
            preference: "Men", dob: "1993-04-23", password: "12345678", password_confirmation: "12345678", email_confirmed: true)


User.create(name: "Conner", email: "s5555555@student.rmit.edu.au", gender: "Man",
            preference: "Women", dob: "1995-05-21", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Jasmin", email: "s6666666@student.rmit.edu.au", gender: "Woman",
            preference: "Women", dob: "1992-05-11", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Sui", email: "s7777777@student.rmit.edu.au", gender: "Woman",
            preference: "Both", dob: "1990-08-12", password: "12345678", password_confirmation: "12345678", email_confirmed: true)

User.create(name: "Rocky", email: "s8888888@student.rmit.edu.au", gender: "Man",
            preference: "Men", dob: "1998-04-11", password: "12345678", password_confirmation: "12345678")

User.new({name: 'admin', email: 'admin@rmit.edu.au', password: 'password', password_confirmation: 'password', is_admin: true, email_confirmed: true}).save(validate: false)

Questionnaire.create(q1: 'Cats', q2: 'Walk_On_The_Beach', q3: 'Movies', q4: 'Dining_At_A_Restaurant', q5: 'Video_Games', q6: 'Android', q7: 'Art', q8: 'Paris', q9: 'Drinks_At_A_Bar', q10: 'Building_8_Escalators',
                     pq1: 6, pq2: 3, pq3: 2, pq4: 9, pq5: 3, pq6: 8, pq7: 9, pq8: 5, pq9: 2, pq10: 7, user_id: 1)

Questionnaire.create(q1: 'Cats', q2: 'Walk_On_The_Beach', q3: 'Movies', q4: 'Dining_At_A_Restaurant', q5: 'Video_Games', q6: 'Android', q7: 'Art', q8: 'Paris', q9: 'Night_Out_Clubbing', q10: 'Building_80_Elevators',
                     pq1: 2, pq2: 4, pq3: 10, pq4: 10, pq5: 3, pq6: 10, pq7: 1, pq8: 9, pq9: 8, pq10: 6, user_id: 2)

Questionnaire.create(q1: 'Cats', q2: 'Walk_On_The_Beach', q3: 'Movies', q4: 'Dining_At_A_Restaurant', q5: 'Video_Games', q6: 'Android', q7: 'Sport', q8: 'Bali', q9: 'Night_Out_Clubbing', q10: 'Building_80_Elevators',
                     pq1: 7, pq2: 10, pq3: 7, pq4: 4, pq5: 4, pq6: 3, pq7: 8, pq8: 1, pq9: 2, pq10: 9, user_id: 3)

Questionnaire.create(q1: 'Cats', q2: 'Walk_On_The_Beach', q3: 'Movies', q4: 'Dining_At_A_Restaurant', q5: 'Board_Games', q6: 'iPhone', q7: 'Sport', q8: 'Bali', q9: 'Night_Out_Clubbing', q10: 'Building_80_Elevators',
                     pq1: 5, pq2: 5, pq3: 10, pq4: 6, pq5: 8, pq6: 2, pq7: 3, pq8: 7, pq9: 1, pq10: 10, user_id: 4)

Questionnaire.create(q1: 'Dogs', q2: 'Walk_On_The_Beach', q3: 'Books', q4: 'Coffee_At_A_Cafe', q5: 'Board_Games', q6: 'iPhone', q7: 'Sport', q8: 'Bali', q9: 'Night_Out_Clubbing', q10: 'Building_80_Elevators',
                     pq1: 1, pq2: 3, pq3: 7, pq4: 6, pq5: 1, pq6: 4, pq7: 1, pq8: 4, pq9: 8, pq10: 1,user_id: 5)

Questionnaire.create(q1: 'Dogs', q2: 'Walk_In_The_Park', q3: 'Books', q4: 'Coffee_At_A_Cafe', q5: 'Board_Games', q6: 'iPhone', q7: 'Sport', q8: 'Bali', q9: 'Night_Out_Clubbing', q10: 'Building_80_Elevators',
                     pq1: 3, pq2: 3, pq3: 6, pq4: 1, pq5: 9, pq6: 4, pq7: 1, pq8: 2, pq9: 6, pq10: 5,user_id: 6)

Questionnaire.create(q1: 'Dogs', q2: 'Walk_In_The_Park', q3: 'Books', q4: 'Coffee_At_A_Cafe', q5: 'Board_Games', q6: 'iPhone', q7: 'Art', q8: 'Paris', q9: 'Drinks_At_A_Bar', q10: 'Building_8_Escalators',
                     pq1: 3, pq2: 6, pq3: 3, pq4: 5, pq5: 7, pq6: 4, pq7: 4, pq8: 5, pq9: 3, pq10: 6,user_id: 7)

Questionnaire.create(q1: 'Dogs', q2: 'Walk_In_The_Park', q3: 'Books', q4: 'Coffee_At_A_Cafe', q5: 'Board_Games', q6: 'Android', q7: 'Art', q8: 'Paris', q9: 'Drinks_At_A_Bar', q10: 'Building_8_Escalators',
                     pq1: 1, pq2: 1, pq3: 1, pq4: 1, pq5: 1, pq6: 1, pq7: 1, pq8: 1, pq9: 1, pq10: 1,user_id: 8)