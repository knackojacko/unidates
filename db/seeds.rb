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
    
admin = User.new({name: 'admin', email: 'admin@rmit.edu.au', password: 'password', password_confirmation: 'password'  });
admin.is_admin = true;
admin.save(validate: false);
    
    

    
Questionnaire.create(q1:'Cat', q2:'Art', q3:'Drinks', q4:'Iphone', q5:'Books', q6:'Bali', q7:'Cafe', q8:'Board Games', q9:'Walk on beach', q10:'Building 80 elevators', user_id: 1 )
Questionnaire.create(q1:'Dog', q2:'Art', q3:'Drinks', q4:'Iphone', q5:'Books', q6:'Bali', q7:'Cafe', q8:'Board Games', q9:'Walk on beach', q10:'Building 80 elevators', user_id: 2 )
Questionnaire.create(q1:'Cat', q2:'Sport', q3:'Drinks', q4:'Iphone', q5:'Books', q6:'Bali', q7:'Cafe', q8:'Board Games', q9:'Walk on beach', q10:'Building 80 elevators', user_id: 3 )
Questionnaire.create(q1:'Dog', q2:'Art', q3:'Clubbing', q4:'Iphone', q5:'Books', q6:'Bali', q7:'Cafe', q8:'Video Games', q9:'Walk on beach', q10:'Building 80 elevators', user_id: 4 )

Questionnaire.create(q1:'Cat', q2:'Sport', q3:'Clubbing', q4:'Android', q5:'Movies', q6:'Paris', q7:'Restaurant', q8:'Video Games', q9:'Walk in park', q10:'Building 80 escalators', user_id: 5 )
Questionnaire.create(q1:'Dog', q2:'Art', q3:'Clubbing', q4:'Android', q5:'Movies', q6:'Paris', q7:'Restaurant', q8:'Video Games', q9:'Walk in park', q10:'Building 80 escalators', user_id: 6 )
Questionnaire.create(q1:'Dog', q2:'Art', q3:'Clubbing', q4:'Android', q5:'Movies', q6:'Paris', q7:'Restaurant', q8:'Video Games', q9:'Walk in park', q10:'Building 80 escalators', user_id: 7 )
Questionnaire.create(q1:'Cat', q2:'Sport', q3:'Clubbing', q4:'Android', q5:'Movies', q6:'Paris', q7:'Restaurant', q8:'Video Games', q9:'Walk in park', q10:'Building 80 escalators', user_id: 8 )

