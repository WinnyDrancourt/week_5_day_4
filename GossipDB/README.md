# Week_5 Day_4 : Gossip

Some work around DB and active record with rails. Gossip
Data seed create with Faker.

to install :
`bundle install`
and enter into Rails console :
`rails c`

# Some test

we take randomly from DB User & gossip to test :

```
user = User.order(Arel.sql('RANDOM()')).first
gossip = Gossip.order(Arel.sql('RANDOM()')).first
```

```
tp user.received_messages
tp user.sent_messages
tp user.gossip
tp user.city
```

```
tp gossip.tags
tp gossip.user
```
