# Instatalk

###### Ruby: `3.1.2` Rails: `7.0.4`

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
