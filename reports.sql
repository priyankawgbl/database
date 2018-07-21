user
  id        integer
  name      string
  address   string
  phone     string
  email     string
  status    boolean
  username  string
  password  string


  role
  id
  user_id
  role

fee_paid
  id           int
  user_id   int
  paid_date    date
  course_id    int
  amount_paid   int


select u.name from user u left join fee_paid p on u.id = p.user_id inner join role r on r.user_id = u.id where p.user_id = null and r.role = "student"



user
  id        integer
  name      string
  address   string
  phone     string
  email     string
  status    boolean
  username  string
  password  string

  salary
  id
  user_id
  user_salary
  salary_period



select u.name,sum(s.salary) as annual_salary from user u inner join salary s on u.id = s.user_id where s.salary_period BETWEEN january2017 AND december2017 group by s.salary_period

user
  id        integer
  name      string
  address   string
  phone     string
  email     string
  status    boolean
  username  string
  password  string


  attendance
  id            int
  date          date
  lecture_id


  user_attendance
  id
  attendance_id
  user_id
  staus         boolean

  lecture
  id            int
  batch_id      int
  user_id       int
  subject_id    int
  lecture_date


select id,user_id from lecture inner join attendence on attendence.
  (select lecture_id from attendance inner join user_attendance on user_attendance.attendance_id =
  (select attendance_id from user_attendance where
      (select count(status) from user_attendance u where u.status = "1" group by u.user_id)*100/(select count(status) from  user_attendance v group by v.user_id)
    < 60)  and
  attendance.id IN (select attendance_id from user_attendance where
      (select count(status) from user_attendance u where u.status = "1" group by u.user_id)*100/(select count(status) from  user_attendance v group by v.user_id)
    < 60) )
= lecture.id