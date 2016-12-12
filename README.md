# Journal

## Routes

Students:
```
  GET    /students.json
  POST   /students.json         params: { student: {name, record_book_number, group_id(optional), year(optional)} }
  GET    /students/:id.json
  PATCH  /students/:id.json     params: { student: {name, record_book_number, group_id(optional), year(optional)} }
  PUT    /students/:id.json     params: { student: {name, record_book_number, group_id(optional), year(optional)} }
  DELETE /students/:id.json
```

Groups:
```
  GET    /groups.json
  POST   /groups.json        params: { group: {number, faculty} }
  GET    /groups/:id.json
  PATCH  /groups/:id.json    params: { group: {number, faculty} }
  PUT    /groups/:id.json    params: { group: {number, faculty} }
  DELETE /groups/:id.json
```

Pages:
```
  GET    /pages.json
  POST   /pages.json        params: { pages: [{kind_of_lesson, comment, user_id, subject_id}, {...}] }
  GET    /pages/:id.json
  PATCH  /pages/:id.json    params: { page: {kind_of_lesson, comment, user_id, subject_id} }
  PUT    /pages/:id.json    params: { page: {kind_of_lesson, comment, user_id, subject_id} }
  DELETE /pages/:id.json
```

Punched cards:
```
  GET    /punched_cards.json
  POST   /punched_cards.json        params: { punched_card: {type_of_controll, deadline, max_mark, subject_group_id} }
  GET    /punched_cards/:id.json
  PATCH  /punched_cards/:id.json    params: { punched_card: {type_of_controll, deadline, max_mark, subject_group_id} }
  PUT    /punched_cards/:id.json    params: { punched_card: {type_of_controll, deadline, max_mark, subject_group_id} }
  DELETE /punched_cards/:id.json
```

Subject:
```
  GET    /subjects.json
  POST   /subjects.json       params: { subject: {name} }
  GET    /subjects/:id.json
  PATCH  /subjects/:id.json   params: { subject: {name} }
  PUT    /subjects/:id.json   params: { subject: {name} }
  DELETE /subjects/:id.json
```

Subject group:
```
  GET    /subject_groups.json
  POST   /subject_groups.json       params: { subject_group: {subject_id, group_id, year} }
  GET    /subject_groups/:id.json
  PATCH  /subject_groups/:id.json   params: { subject_group: {subject_id, group_id, year} }
  PUT    /subject_groups/:id.json   params: { subject_group: {subject_id, group_id, year} }
  DELETE /subject_groups/:id.json
```

Teacher:
```
  GET    /teachers.json
  POST   /teachers.json       params: { teacher: {name, department} }
  GET    /teachers/:id.json
  PATCH  /teachers/:id.json   params: { teacher: {name, department} }
  PUT    /teachers/:id.json   params: { teacher: {name, department} }
  DELETE /teachers/:id.json
```

Users:
```
  GET    /users.json
  POST   /users.json        params: { user: {login, password, teacher_id} }
  GET    /users/:id.json
  PATCH  /users/:id.json    params: { user: {login, password, teacher_id} }
  PUT    /users/:id.json    params: { user: {login, password, teacher_id} }
  DELETE /users/:id.json
```

Student punched cards:
```
  GET    /student_punched_cards.json
  POST   /student_punched_cards.json        params: { student_punched_card: {punched_card_id, student_id, date, mark} }
  GET    /student_punched_cards/:id.json
  PATCH  /student_punched_cards/:id.json    params: { student_punched_card: {punched_card_id, student_id, date, mark} }
  PUT    /student_punched_cards/:id.json    params: { student_punched_card: {punched_card_id, student_id, date, mark} }
  DELETE /student_punched_cards/:id.json
```

Comments:
```
  GET    /comments.json    params: { comment: {date, attendance, page_id, student_id} }
  POST   /comments.json    params: { comments: [{date, attendance, student_comment, page_id, student_id}] }
```