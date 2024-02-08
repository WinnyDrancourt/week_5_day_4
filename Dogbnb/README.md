# Week_5 Day_4 : DogSitting

Some work around DB and active record with rails. DogSitting
Data seed create with Faker.

to install :
`bundle install`
and enter into Rails console :
`rails c`

# Some test

we take randomly from DB dog & Dogsitter :

```
dog = Animal.order(Arel.sql('RANDOM()')).first
sitter = AnimalSitter.order(Arel.sql('RANDOM()')).first
```

```
tp dog.aninmal_sitters
tp dog.stroll
```

```
tp sitter.animal
tp sitter.city
```
