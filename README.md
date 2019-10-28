# Shopping_Cart

This project is a simulation of shopping cart, with update cart products add coupon and checkout features .

## Prerequisites

```
Ruby >= 2.5.0
```

```
Rails >= 6.0.0
```

```
Gem >= 3.0.6
```

```
Bundle >= 1.17.3
```

```
PostgreSQL
```


### API Collection


[https://web.postman.co/collections/7099013-433bafb8-1e34-44a6-9631-8ef1e1cdefff?version=latest&workspace=c9cff064-69fa-4e44-8f7a-3ba25cb10408](https://web.postman.co/collections/7099013-433bafb8-1e34-44a6-9631-8ef1e1cdefff?version=latest&workspace=c9cff064-69fa-4e44-8f7a-3ba25cb10408)



### Getting Started

```
- First put your database informations in database.yml 

- Then run the rails server

- Run the migrations with the command rails db:migrate

- After this seed the database with the command rails db:seed
```

### Project Routes


```
POST http://localhost:8000/api/auth/login

This endpoint will authenticate the user
```

```
GET
```
```
http://localhost:8000/api/deputies/socialMedia/ranking
```
```
This endpoint will show the ranking of social medias most used by deputies. 
```
