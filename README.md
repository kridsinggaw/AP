Install step

```
cd backend
npm install
cd ..
```
Start application
```
docker-compose up -d
```
API

Login
```
curl --location --request POST 'http://localhost:3000/auth/login' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "takeshi@gmail.com",
    "password": "1234"
}'
```

Get user news
```
curl --location --request GET 'localhost:3000/user/news' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJ0YWtlc2hpQGdtYWlsLmNvbSIsImlhdCI6MTYxNjkxMzI2Mn0.CB0ZXglmcRkx4gx5TzmU3g6wLg0RCQqHImI6gAnjlXs'
```

Create read history
```
curl --location --request POST 'localhost:3000/history/create' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJ0YWtlc2hpQGdtYWlsLmNvbSIsImlhdCI6MTYxNjg5Njg0Mn0.k4kl1nUDSvZqMlqotC8D6HdTPjAzDMeqCFEKDxofGD4' \
--header 'Content-Type: application/json' \
--data-raw '{
    "newsId": 5
}'
```