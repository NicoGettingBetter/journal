Student.create([ {name: 'Lordi', record_book_number: '123456'},
  {name: 'Marilyn', record_book_number: '123457'},
  {name: 'Ozzy', record_book_number: '123458'}])

Group.create(number: '942', faculty: '9')

Student.all.each do |student|
  student.student_groups.create(group_id: Group.all.sample.id, year: '2016-2017')
end

Subject.create([{name: 'math'},
                {name: 'OOP'}])

Subject.all.each do |subject|
  subject.subject_groups.create(group_id: Group.all.sample.id, year: '2016-2017')
end

PunchedCard.create({
  type_of_controll: "MC",
  deadline: '10/10/2017',
  max_mark: 25,
  subject_group_id: SubjectGroup.all.sample.id
})

Student.all.each do |student|
  student.student_punched_cards(
    punched_card_id: PunchedCard.all.sample.id,
    date: '10/10/2010', mark: 15
  )
end

Teacher.create({name: 'TJ', department: 'CIT'})

TeacherUser.create({
  login: "loginfor#{User.count}",
  password: '123456',
  teacher_id: Teacher.all.sample.id
})

Admin.create({
  login: 'admin',
  password: 'admin'
})

Page.create({
  kind_of_lesson: 'lection',
  comment: 'comment',
  user_id: User.all.sample.id,
  subject_id: Subject.all.sample.id
})

Comment.create({
  date: '10/10/2010',
  attendance: Comment.count,
  student_comment: 'comment',
  page_id: Page.all.sample.id,
  student_id: Student.all.sample.id
})
