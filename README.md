# Twitter Redesign

> In this project, I created a similar design to that of `twitter.com`, a popular micro-blogging platform. The mocking design has basic functionalities that mimic those of the real site.

# Project Specification

1. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).
2. The user is presented with the homepage (see the _Homepage_ screenshot above) that includes:
   1. Left-side menu (includes only links to pages that are implemented).
   2. _Tweets_ tab in the centre (skip _Photos_ and _Videos_ for this MVP).
   3. Right-side section with *Who to follow (*skip _Trending for_ this MVP).
3. The _Tweets_ section includes:
   1. Simple form for creating a tweet.
   2. List of all tweets (sorted by most recent) that display tweet text and author details.
4. The _Who to follow_ section includes:
   1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page (see the _Userpage_ screenshot above), they can see:
   1. Left-side menu (includes only links to pages that are implemented).
   2. Cover picture and _Tweets_ tab in the centre (skip other tabs and _Tweet to user_ form).
   3. Right-side section with _Profile detailed info._
6. The _Profile detailed info_ section includes:
   1. User photo.
   2. Button to follow a user.
   3. Stats: total number of tweets, number of followers and number of following users.
   4. List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

## Live Demo

[Heroku App Link](http://shrouded-bastion-11104.herokuapp.com/)

## Video presentation

(https://www.loom.com/share/740a8bc4be7640cda97a8cb20fff9b49)

### Homepage

![screenshot](welcome.PNG)

### Userpage

![screenshot](home.PNG)

## Built With

- Ruby v2.7.0
- Ruby on Rails v6.0.2
- Bootstrap
- PostgreSQL
- RSPEC

### Prerequisites

- Ruby: 2.6.5
- Rails: 6.0.3
- Postgres: >=9.5
- Git

### Usage

- Fork/Clone this project to your local machine
- Navigate to the local folder of the forked project and run these lines of code in the console:

Install neccesary gems with:

```Ruby
    bundle install
```

Set up database with:

```Ruby
   rails db:migrate
```

Set up cloudinary:

- Goto `cloudinary.com` create an account and get your cloudinary credentials through the "Set Up Your SDK" option.
- Add the credentials to the `config/application.yml` like this :

```
cloud_name: "YOUR_CLOUDINARY_NAME"
API_KEY: "YOUR_CLOUDINARY_API_KEY"
API_SECRET: "YOUR_CLOUDINARY_API_SECRET"
```

- Add `config/application.yml` file to your .gitignore file to avoid it being added to your public Github repository.
  Start server with:

```Ruby
    rails server
```

Then open a web page and go to [port 3000 on your local machine.](http://localhost:3000)

### Running tests

```Ruby
    rspec
```

### Deployment

The application was deployed on heroku.

## Authors

👤 **Vo thi Quynh Yen**

- Github: [@themonster2015](https://github.com/themonster2015)

## 🤝 Contributing

Contributions are welcome!

## Show your support

Give a ⭐️ if you like this project! It's free.

## Acknowledgments

Design idea by [Gregoire Vella](https://www.behance.net/gregoirevella).
{"mode":"full","isActive":false}
