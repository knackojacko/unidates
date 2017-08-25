# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Bill", email: "s1122123@student.rmit.edu.au", gender: "Man", 
    preference: "Women", dob: "1997-09-01", password: "12345678", password_confirmation: "12345678"  )
    
User.create(name: "Jessica", email: "s3333333@student.rmit.edu.au", gender: "Woman", 
    preference: "Women", dob: "1996-05-02", password: "12345678", password_confirmation: "12345678"  )

User.create(name: "Matt", email: "s2222222@student.rmit.edu.au", gender: "Man", 
    preference: "Both", dob: "1991-01-01", password: "12345678", password_confirmation: "12345678"  )

User.create(name: "Lisa", email: "s4444444@student.rmit.edu.au", gender: "Woman", 
    preference: "Men", dob: "1993-04-23", password: "12345678", password_confirmation: "12345678"  )


User.create(name: "Conner", email: "s5555555@student.rmit.edu.au", gender: "Man", 
    preference: "Women", dob: "1995-05-21", password: "12345678", password_confirmation: "12345678"  )
    
User.create(name: "Jasmin", email: "s6666666@student.rmit.edu.au", gender: "Woman", 
    preference: "Women", dob: "1992-05-11", password: "12345678", password_confirmation: "12345678"  )

User.create(name: "Sui", email: "s7777777@student.rmit.edu.au", gender: "Woman", 
    preference: "Both", dob: "1990-08-12", password: "12345678", password_confirmation: "12345678"  )

User.create(name: "Rocky", email: "s8888888@student.rmit.edu.au", gender: "Man", 
    preference: "Men", dob: "1998-04-11", password: "12345678", password_confirmation: "12345678"  )
    
Questionnaire.create(q1:'Cat', q2:'Fox', q3:'Linking', q4:'Apples', q5:'Soda', q6:'Walk', q7:'Meat', q8:'Mince', q9:'House', q10:'School', user_id: 1 )
Questionnaire.create(q1:'Dog', q2:'Mouse', q3:'Billy', q4:'Apples', q5:'Soda', q6:'Run', q7:'Meat', q8:'Mince', q9:'Apartment', q10:'Uni', user_id: 2 )
Questionnaire.create(q1:'Cat', q2:'Fox', q3:'Linking', q4:'Apples', q5:'Soda', q6:'Walk', q7:'Meat', q8:'Whole', q9:'House', q10:'School', user_id: 3 )
Questionnaire.create(q1:'Dog', q2:'Fox', q3:'Linking', q4:'Orange', q5:'Whine', q6:'Walk', q7:'Fruit', q8:'Whole', q9:'Apartment', q10:'School', user_id: 4 )
Questionnaire.create(q1:'Both', q2:'Fox', q3:'Linking', q4:'Orange', q5:'Whine', q6:'Run', q7:'Fruit', q8:'Whole', q9:'Apartment', q10:'School', user_id: 5 )
Questionnaire.create(q1:'Both', q2:'Mouse', q3:'Billy', q4:'Apples', q5:'Whine', q6:'Run', q7:'Fruit', q8:'Whole', q9:'House', q10:'Uni', user_id: 6 )
Questionnaire.create(q1:'Dog', q2:'Mouse', q3:'Billy', q4:'Apples', q5:'Soda', q6:'Walk', q7:'Fruit', q8:'Mince', q9:'House', q10:'Uni', user_id: 7 )
Questionnaire.create(q1:'Cat', q2:'Fox', q3:'Billy', q4:'Orange', q5:'Soda', q6:'Walk', q7:'Meat', q8:'Mince', q9:'Apartment', q10:'Uni', user_id: 8 )

