# Shopping_Cart

This project is a simulation of shopping cart, with update cart products, add coupon and checkout features .

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

- All the endpoints are protected by jwt-token
```

### Project Routes

```
POST http://localhost:8000/api/auth/login

This endpoint will authenticate the user.

Request body example:

{
	"email": "yasmin",
	"password": "123"
}

Body response example:
{
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMSwiZXhwIjoxNTcyMzg1OTk0fQ.JeC-9GOFj1ZMmke6UpGBTVirJi5Edk0AEzQCbaJ4Xmw",
    "exp": "10-29-2019 18:53",
    "username": "yasmin"
}
```

```
POST http://localhost:8000/api/carts

This endpoint will add products to the user's cart. 

Request body example:

{
	"product_id": 1,
	"quantity": 12
}

Body response example:
{
    "message": "Product added to cart",
    "data": {
        "id": 5,
        "cart_id": 28,
        "product_id": 1,
        "quantity": 12
    }
}
```

```
POST http://localhost:8000/api/carts/applycoupon

This endpoint will apply a coupon to the user's cart.

Request body example:

{
	"coupon": "fixedcoupodn"
}

Body response example:
{
    "message": "Coupon has been applied",
    "data": {
        "user_id": 11,
        "coupon_id": 2,
        "id": 29,
        "created_at": "2019-10-28T23:27:34.663Z",
        "updated_at": "2019-10-28T23:27:37.121Z"
    }
}
```

```
GET http://localhost:8000/api/checkout

This endpoint will get the calculations of user's cart.

Body response example:
{
    "subtotal": 120,
    "coupon": 100,
    "shipping_fee": 30,
    "total": 50
}
```
