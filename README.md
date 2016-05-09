== README

# People Manager
## Manage people the easy way

Aspects to be covered in this README:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions


### Ruby Version

Exact Version Used: `ruby 2.2.4p230 (2015-12-16 revision 53155) [x86_64-darwin15]`

### System Dependencies

The application dependencies are as follows:

* Redis 3.0.5
* Mailcatcher 0.6.1
* Foreman 0.78.0 (For running the app through the Procfile)
* MySQL server 5.7.11

### Configuration

The application is meant to be executed on the localhost. Redis will run on its default port as well as mysql server. The rails application is supposed to be deployed/started to its default port 3000 on localhost.

### Database Creation

To create the database simply run `bundle exec rake db:create`

### Database Initialization

To initialize the database simply run `bundle exec rake db:migrate db:seed`

### How to run the test suite

To run/execute the test suite simply run `bundle exec rake test`

### Services (job queues, cache servers, search engines, etc)

The application will only be using a job queue to process emails. This is done using Resque. To get this service running you can go ahead and open a terminal an type: `QUEUE=* rake environment resque:work` or you can run the application with foreman like this: `foreman start -p 3000`. The last command will run the web server and the resque process.

### Deployment instructions

To deploy the application locally you only need to do the following after installing all the dependencies.

1. Clone this repo
2. Run `bundle install` or simply `bundle`
3. Follow the database creation and initialization commands
4. Run `mailcatcher` and open a browser on localhost:1080 to see the emails console
5. Finally run `foreman start -p 3000` to start the application

- Mailcatcher for testing emails on localhost
- MySQL server up and running
- Ruby 2.2.4
- Rails 4.2.6 or higher
- Redis must be installed and running on default port