# project_surveyor
Build it, take it, view it.

[A Ruby on Rails project from the Viking Code School which uses Active Record Associations, nested forms, collection forms, range fields, and PostgreSQL](https://www.vikingcodeschool.com)


----

## warmup questions

1. What is the relationship between a survey and its questions?
  * A survey has many questions.
2. How might you create a survey and also create questions for it?
  * Nested forms: Survey[questions[question details]]
3. What is the relationship between a multiple choice question and its options?
  * multi-choice question has many options.
4. How do you create a multiple choice questions and also create options for it?
  * Nested: question[options[option details]]
