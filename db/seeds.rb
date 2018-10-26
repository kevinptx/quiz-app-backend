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

sql = Category.create(name: "SQL", img: "https://cdn.macworld.co.uk/cmsdata/features/3638150/setup_learn_sql_mac_thumb800.jpg")

q1 = Question.create(name: "What is the correct syntax for referring to an external script called xxx.js?", ac_1: "<script name=xxx.js>", ac_2: "<script type=xxx.js>", ac_3: "<script href=xxx.js>", correct_answer: "<script src=xxx.js>", cat_id: javascript.id)

q2 = Question.create(name: "Inside which HTML element do we put the JavaScript?", ac_1: "<js>", ac_2: "<javascript>", ac_3: "<scripting>", correct_answer: "<script>", cat_id: javascript.id)

q3 = Question.create(name: "How do you create a function in JavaScript?", ac_1: "function = myFunction()", ac_2: "function:myFunction()", ac_3: "function = myFunction()", correct_answer: "function myFunction()", cat_id: javascript.id)

q4 = Question.create(name: "How to write an IF statement in JavaScript?", ac_1: "if i == 5 then", ac_2: "if i = 5 then", ac_3: "if i = 5", correct_answer: "if (i == 5)", cat_id: javascript.id)

q5 = Question.create(name: "Which event occurs when the user click on an HTML element?", ac_1: "mouseover", ac_2: "onmouseover", ac_3: "onchange", correct_answer: "onclick", cat_id: javascript.id)

q6 = Question.create(name: "How do you find the number with the highest value of x and y?", ac_1: "ceil(x,y)", ac_2: "top(x,y)", ac_3: "Math.ceil(x,y)", correct_answer: "Math.max(x,y)", cat_id: javascript.id)

q7 = Question.create(name: "How do you insert a comment that has more than one line?", ac_1: "<--!This comment has more than one line!-->", ac_2: "//*This comment has more than one line*//", ac_3: "<!--*This comment has more than one line-->", correct_answer: "/*This comment has more than one line*/", cat_id: javascript.id)

q8 = Question.create(name: "How does a for loop start?", ac_1: "for(i to 8)", ac_2: "for i = 0, i++", ac_3: "for(i++4)", correct_answer: "for(i = 0; i <= 4; i++)", cat_id: javascript.id)

q9 = Question.create(name: "How does a WHILE loop start?", ac_1: "while (1 <= 10; i++)", ac_2: "while i++", ac_3: "while i = 0 to 100", correct_answer: "while (i <= 10)", cat_id: javascript.id)

q10 = Question.create(name: "How do you write an IF statement for executing some code if i is NOT equal to 10?", ac_1: "if(i NOT 10)", ac_2: "if i != 10", ac_3: "if (i !! 10)", correct_answer: "if (i != 10)", cat_id: javascript.id)

q1 = Question.create(name: "How do you access a function fetch() from a h1 element in JSX?", ac_1: "<h1>${fetch()}</h1>", ac_2: "<h1>{fetch}</h1>", ac_3: "<h1>${fetch}</h1>", correct_answer: "<h1>{fetch()}</h1>", cat_id: react.id)

q2 = Question.create(name: "Which method in a React Component should you override to stop the component from updating?", ac_1: "componentDidMount
  ", ac_2: "componentDidUpdate", ac_3: "<h1>${fetch}</h1>", correct_answer: "shouldComponentUpdate", cat_id: react.id)

q3 = Question.create(name: "What's used to pass data to a component from outside?", ac_1: "setState", ac_2: "render with arguments", ac_3: "PropTypes", correct_answer: "props", cat_id: react.id)

q4 = Question.create(name: "Which method in a React Component is called after the component is rendered for the first time?", ac_1: "componentDidUpdate", ac_2: "componentUpdated", ac_3: "componentMounted", correct_answer: "componentDidMount", cat_id: react.id)

q5 = Question.create(name: "Which of the following is correct syntax for a button click event handler, foo?", ac_1: "<button onclick={this.foo()}>", ac_2: "<button onclick={this.foo}>", ac_3: "<button onClick={this.foo()}>", correct_answer: "<button onClick={this.foo}>", cat_id: react.id)

q6 = Question.create(name: "What happens when you call setState() inside render() method?", ac_1: "Repetitive output appears on the screen", ac_2: "Duplicate key error", ac_3: "Nothing happens", correct_answer: "Stack overflow error", cat_id: react.id)

q7 = Question.create(name: "What is React?", ac_1: "A library for Ruby", ac_2: "A database system", ac_3: "A NoSQL framework", correct_answer: "An open-source JavaScript library created by Facebook for building complex, interactive UIs in web and mobile applications.", cat_id: react.id)

q8 = Question.create(name: "What happens when you call setState?", ac_1: "A JavaScript fetch begins", ac_2: "The page refreshes", ac_3: "A databased update is processed", correct_answer: "The first thing React will do when setState is called is merge the object you passed into setState into the current state of the component. This will kick off a process called reconciliation. The end goal of reconciliation is to, in the most efficient way possible, update the UI based on this new state.", cat_id: react.id)

q9 = Question.create(name: "What’s the difference between an Element and a Component in React", ac_1: "One is a GET and the other is a POST", ac_2: "It's grabbing elements from the DOM", ac_3: "It's refreshing the page", correct_answer: "a React element describes what you want to see on the screen. Not so simply put, a React element is an object representation of some UI. A React component is a function or a class which optionally accepts input and returns a React element (typically via JSX which gets transpiled to a createElement invocation).", cat_id: react.id)

q10 = Question.create(name: "When would you use a Class Component over a Functional Component", ac_1: "Use it when the DOM is manipulated", ac_2: "Use it on refresh", ac_3: "Use it to make an Axios request", correct_answer: "If your component has state or a lifecycle method(s), use a Class component. Otherwise, use a Functional component.", cat_id: react.id)

q1 = Question.create(name: "What does SQL stand for?", ac_1: "Structured Quiz Language", ac_2: "Structured Question Language", ac_3: "Single Query Language", correct_answer: "Structured Query Language", cat_id: sql.id)

q2 = Question.create(name: "Which SQL statement is used to update data in a database?", ac_1: "INCREASE", ac_2: "INSERT", ac_3: "UPLOAD", correct_answer: "UPDATE", cat_id: sql.id)

q3 = Question.create(name: "Which SQL statement is used to delete data from a database?", ac_1: "DUPLICATE", ac_2: "DATABASE", ac_3: "DESTROY", correct_answer: "DELETE", cat_id: sql.id)

q4 = Question.create(name: "Which SQL statement is used to insert new data in a database?", ac_1: "PUT INTO", ac_2: "INSERT", ac_3: "INTERJECT", correct_answer: "INSERT INTO", cat_id: sql.id)

q5 = Question.create(name: "How can you change “Hansen” into “Nilsen” in the “LastName” column in the Persons table?", ac_1: "LastName=Nilsen", ac_2: "Person.LastName = Nilsen", ac_3: "Nilsen.value = LastName", correct_answer: "UPDATE Persons SET LastName=’Nilsen’ WHERE LastName=’Hansen’", cat_id: sql.id)

q6 = Question.create(name: "With SQL, how can you delete the records where the “FirstName” is “Peter” in the Persons Table?", ac_1: "FirstName = null", ac_2: "FirstName.delete", ac_3: "FirstName=0", correct_answer: "DELETE FROM Persons WHERE FirstName = ‘Peter’", cat_id: sql.id)

q7 = Question.create(name: "With SQL, how can you return the number of records in the “Persons” table?", ac_1: "SELECT ALL FROM Persons", ac_2: "SELECT * FROM PERSONS", ac_3: "Persons.count", correct_answer: "SELECT COUNT(*) FROM Persons", cat_id: sql.id)

q8 = Question.create(name: "With SQL, how can you insert a new record into the “Persons” table?", ac_1: "INSERT INTO Persons Name='Jimmy', 'Jackson'", ac_2: "Person='Jimmy', 'Jackson'", ac_3: "Person.name = 'Jimmy', 'Jackson'", correct_answer: "INSERT INTO Persons VALUES ('Jimmy', 'Jackson')", cat_id: sql.id)

q9 = Question.create(name: "Which SQL keyword is used to sort the result-set?", ac_1: "ORDER THIS", ac_2: "ORDER", ac_3: "RANK BY", correct_answer: "ORDER BY", cat_id: sql.id)

q10 = Question.create(name: "With SQL, how do you select all the columns from a table named “Persons”?", ac_1: "SELECT ALL FROM Persons", ac_2: "SELECT ALL Persons", ac_3: "SELECT ** Persons", correct_answer: "SELECT * FROM Persons", cat_id: sql.id)

AnsweredQuestion.create(user_id: jonathan.id, question_id: q1.id, correct_answer: 1)
AnsweredQuestion.create(user_id: kevin.id, question_id: q2.id, correct_answer: 0)
AnsweredQuestion.create(user_id: kevin.id, question_id: q3.id, correct_answer: 1)
AnsweredQuestion.create(user_id: jonathan.id, question_id: q4.id, correct_answer: 0)
