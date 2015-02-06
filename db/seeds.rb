
User.create(username: "lucas")
User.create(username: "jordan")
User.create(username: "clarisse")
User.create(username: "brandon")

Relationship.create(fan_id: 1, idol_id: 2)
Relationship.create(fan_id: 1, idol_id: 3)
Relationship.create(fan_id: 2, idol_id: 1)
Relationship.create(fan_id: 4, idol_id: 1)

#expectations
#lucas has idols: jordan and clarisse
#lucas has fans: jordan and brandon

# SELECT users.* FROM users INNER JOIN relationships ON users.id = relationships.fan_id WHERE relationships.idol_id = $1


