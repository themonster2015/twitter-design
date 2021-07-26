# Twitter Redesign

> In this project, I created a similar design to that of `twitter.com`, a popular micro-blogging platform. The mocking design has basic functionalities that mimic those of the real site.

## Live Demo

[Heroku App Link](http://shrouded-bastion-11104.herokuapp.com/)

## Video presentation

(https://www.loom.com/share/740a8bc4be7640cda97a8cb20fff9b49)

### Homepage

![screenshot](./welcome.PNG?raw=true)

### Userpage

![screenshot](./home.PNG?raw=true)

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
