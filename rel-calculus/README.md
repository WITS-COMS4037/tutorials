# Tutorial assignment: Tuple-Relational Calculus

Consider a database with the following schema:

```sql
	student( snum, sname, major, standing, age )
	faculty( fid, fname, deptid )
	class( cname, meets_at, room, fid )
	enrolled( snum, cname )	
```

The sript containing the definition of the tables as well as some
sample data can be found in the file `students.sql` contained in this
folder -- please, take a look at the data to make sure you understand
the meaning of the fields in the tables.

Write tuple relational calculus queries producing the following
results:

1. The names of all juniors who are enrolled in a class taught by
Ivana Teach.

2. The names of all classes that meet in room R128 and are taught by
Ivana Teach.

3. The ages of the students who either are History majors or are
 enrolled in a class taught by Ivana Teach.

4. The names of all students who are enrolled in two classes that meet
at the same time.

5. The names of faculty members who teach in every room in which some
class is taught.

6. The names of faculty members who teach classes only in room R128.

7. The names of students not enrolled in any class.

