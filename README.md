# Digital-Journal-Notes API

## Deployed here: [Digital-Journal-Notes](https://digital-journal-notes.herokuapp.com/)

### This is the backend for Digital-Journal-Notes ([link for the frontend](https://github.com/jtx007/Digital-Journal-Notes))




#### Built with:
- Ruby on Rails
- Postgresql
- JWT
- Rack-CORS
- Active Model Serializers

#### Requirements:
- Ruby version 2.5.1
- Rails version 5.2.1
- Postgres App (on local machine)

#### Getting Started:
- Turn on your Postgres app and initialize it to make sure it is running and ready to receive new databases
- Make sure you're in the root of the backend directory and run `bundle install` to install all gems and dependencies
- Next run `rake db:create` and `rake db:migrate` to create the database into postgress and run the migrations. At this point if you click into your postgres app you should see a new database is created
- Finally run `rails s` to boot up local server on your machine for the localized version of your frontend
