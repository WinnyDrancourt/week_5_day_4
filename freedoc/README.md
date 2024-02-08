# Week_5 Day_4 : Freedoc

Some work around DB and active record with rails.
Data seed create with Faker.

to install :
`bundle install`
and enter into Rails console :
`rails c`

# Some test

we take randomly fromd DB Doc and patient :

```
doc = Doctor.order(Arel.sql('RANDOM()')).first
patient = Patient.order(Arel.sql('RANDOM()')).first
```

```
tp doc.patients
tp doc.appointments
```

```
tp patient.doctors
tp patient.appointments
```
