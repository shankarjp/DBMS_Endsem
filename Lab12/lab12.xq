(:~ Question 1 ~:)
(:~ 1 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where $i/Salary > 30000
return $i
(:~ 2 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where starts-with($i/EName,"S")
return $i
(:~ 3 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where $i/Dept = "Research"
return $i
(:~ 4 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where $i/Job = "Manager" and $i/WorkingHours > 8
return $i
(:~ 5 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
order by (xs:integer($i/Salary)) descending
return $i/EName
(:~ 6 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
order by $i/EName
return $i/EName

(:~ Question 2 ~:)
(:~ 1 ~:)
xquery version "3.1";
for $i in StudentDetails/Student
where $i/Marks > 75
return $i/Marks
(:~ 2 ~:)
xquery version "3.1";
avg(StudentDetails/Student/Marks)
(:~ 3 ~:)
xquery version "3.1";
sum(StudentDetails/Student/Marks)
(:~ 4 ~:)
xquery version "3.1";
min(StudentDetails/Student/Marks)
max(StudentDetails/Student/Marks)

(:~ Question 3 ~:)
(:~ 1 ~:)
xquery version "3.1";
for $i in FlightDetails/Flight
where $i/Price < 5000
return $i/Price
(:~ 2 ~:)
xquery version "3.1";
for $i in FlightDetails/Flight
where $i/Date = "2020-12-04" and $i/From = "Source"
return $i/DepartsTime
(:~ 3 ~:)
xquery version "3.1";
for $i in FlightDetails/Flight
where $i/Pilotname = "Pilot"
return $i/FlName
(:~ 4 ~:)
xquery version "3.1";
for $i in FligtDetails/Flight
where $i/Date = "2020-11-30" and $i/FlName = "Flight"
return count($i)
(:~ 5 ~:)
xquery version "3.1";
for $i in FlightDetails/Flight
where $i/Date = "2020-11-25" and $i/From = "Source"
return $i/ArrivalTime

(:~ Question 4 ~:)
(:~ 1 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where $i/Dept = "Human Resources"
return $i/EName
(:~ 2 ~:)
xquery version "3.1";
for $i in EmployeeDetails/Employee
where $i/Project = "Project" and $i/Salary > 50000
return $i/EName
(:~ 3 ~:)
xquery version "3.1";
sum(
for $i in EmployeeDetails/Employee
where $i/Dept = "Department"
return $i/Salary
)
(:~ 4 ~:)
xquery version "3.1";
count(
for $i in EmployeeDetails/Employee
where $i/Dept = "Department"
return $i/Salary
)
(:~ 5 ~:)
xquery version "3.1";
max(
for $i in EmployeeDetails/Employee
where $i/Job = "Manager" and $i/Dept = "Department"
return $i/Salary
)
