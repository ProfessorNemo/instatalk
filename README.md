# Instatalk

###### Ruby: `3.1.2` Rails: `7.0.4` Yarn: `3.2.4` Nodejs: `12.22.9` Node: `17.1.0`
![Снимок экрана от 2022-11-07 22-36-04](https://user-images.githubusercontent.com/102049907/200440355-da6e4088-38ea-4631-ad0f-2c8dce807766.png)
![Снимок экрана от 2022-11-07 22-34-56](https://user-images.githubusercontent.com/102049907/200440364-bc255b1c-b7e8-4d21-9a74-db0504bcacde.png)

### About:
The "Instatalk" application allows users to communicate with each other in public chat rooms.

Upon entering the web page, the user is given a random name and can create rooms. Online users are displayed on the main page.

### Usage:

1. Clone repo
```
$ git clone git@github.com:ProfessorNemo/instatalk.git
```

2. Install gems
```
$ bundle
```

3. Create database and run migrations (`PostgreSQL` database is used)
```
$ rails db:create db:migrate
```

4. Start server
```
$ bin/dev
```
Open `localhost:3000` in browser
