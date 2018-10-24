# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AnsweredQuestion.destroy_all
User.destroy_all
Question.destroy_all
Category.destroy_all

jonathan = User.create(name: "jstricklin")
kevin = User.create(name: "kevin")

javascript = Category.create(name: "Javascript", img: "https://png.pngtree.com/svg/20170719/javascript_633988.png")

react = Category.create(name: "React", img: "https://laracasts.com/images/series/circles/do-you-react.png")

q1 = Question.create(name: "What is the correct syntax for referring to an external script called xxx.js?", ac_1: "<script name=xxx.js>", ac_2: "<script type=xxx.js>", ac_3: "<script href=xxx.js>", correct_answer: "<script src=xxx.js>", cat_id: javascript.id)
q2 = Question.create(name: "Inside which HTML element do we put the JavaScript?", ac_1: "<js>", ac_2: "<javascript>", ac_3: "<scripting>", correct_answer: "<script>", cat_id: javascript.id)
q3 = Question.create(name: "How do you create a function in JavaScript?", ac_1: "function = myFunction()", ac_2: "function:myFunction()", ac_3: "function = myFunction()", correct_answer: "function myFunction()", cat_id: javascript.id)
q4 = Question.create(name: "How to write an IF statement in JavaScript?", ac_1: "if i == 5 then", ac_2: "if i = 5 then", ac_3: "if i = 5", correct_answer: "if (i == 5)", cat_id: javascript.id)

AnsweredQuestion.create(user_id: jonathan.id, question_id: q1.id, correct_answer: 1)
AnsweredQuestion.create(user_id: kevin.id, question_id: q2.id, correct_answer: 0)
AnsweredQuestion.create(user_id: kevin.id, question_id: q3.id, correct_answer: 1)
AnsweredQuestion.create(user_id: jonathan.id, question_id: q4.id, correct_answer: 0)
