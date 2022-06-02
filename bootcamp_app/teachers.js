
const { Pool } = require("pg");

const pool = new Pool({
  user: "rafaelnobrega",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const cohortName = process.argv[2] || 'JUL02';

const text = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teacher;
`;

const values = [`%${cohortName}%`];

pool.query(text, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});





