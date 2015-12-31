# Fox Den

A sample application built in a Sinatra MVC skeleton to demonstrate building an RESTful CRUD web app from the ground up.

To run this app locally, ensure you have PostgreSQL installed on your system and run the following commands in the app's root directory:

```bash
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec shotgun
```

Feature list thus far:

* Dens and foxes resources
* Dens have many foxes
* All 7 RESTful routes for foxes
* Drop down menu to choose a den when creating or editing a fox
* Validations and constraints for fox names and colors
* Error handling on foxes new and create actions
