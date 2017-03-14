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

Write tuple relational calculus queries the produce the following
results:

l. The names of all juniors who are enrolled in a class taught by
Ivana Teach.

l. The names of all classes that meet in room R128 and are taught by
Ivana Teach.

l. The ages the students who either are History majors or are enrolled
 in a class taught by Ivana Teach.

l. The names of all students who are enrolled in two classes that meet
at the same time.

l. The names of faculty members who teach in every room in which some
class is taught.

l. The names of faculty members who teache classes only in room R128.

l. The names of students not enrolled in any class.
