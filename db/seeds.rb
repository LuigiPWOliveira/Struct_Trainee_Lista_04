# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Teacher.create(name:"Jose", email:"jose.edil@gmail.com", birth:"1990-04-12")
Teacher.create(name:"Eduardo", email:"edu.macedo@hotmail.com", birth:"1999-02-29")

Language.create(name:"C++", teacher_id:1)
Language.create(name:"Java", teacher_id:2)

Student.create(name:"David", registration:"111222111", email:"davidmendes@gamil.com",birth:"2002-12-22",teacher_id:1)
Student.create(name:"Luigi", registration:"111222122", email:"luigijovemjovem@gmail.com",birth:"2001-02-17",teacher_id:1)
Student.create(name:"Edil", registration:"111222133", email:"edil.unb@hotmail.com",birth:"1994-07-18",teacher_id:1)
Student.create(name:"Gabriel", registration:"111222144", email:"gabriel2001@yahoo.com",birth:"2001-09-25",teacher_id:2)
Student.create(name:"Pablo", registration:"111222155", email:"pablo_escobar@ig.com",birth:"2000-01-12",teacher_id:2)