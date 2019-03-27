# TamUber Safety 
The TAMUber Safety interface is a web project created for the Texas A&M Transportation Institute’s TAMUber project. This project is aimed at providing transportation assistance to disabled and mobility-disadvantaged students at Texas A&M. The TAMUBer safety interface is geared towards ensuring the safety of passengers who wait for the carts. This interface will be accessible to the driver, who will use it for notifying the administrators, contact emergency services, etc.

## Getting started
To get started with the app, clone the repo and then install the needed libraries and gems:

If you are hosting the app on Cloud9, install these dependencies
```
$ sudo yum install -y gcc libxml2 libxml2-devel libxslt libxslt-devel
```

```
$ bundle install --without production
```

Next, apply database migrations to both the dev and test databases:
```
$ bundle exec rake db:migrate
$ bundle exec rake db:migrate RAILS_ENV=test
$ bundle exec rake db:seed
```

Run rspec and cucumber tests to make sure everything is working:
```
$ rspec
$ cucumber
```
If the tests pass, you'll be ready to run the app in a local server:

```
$ rails server -p $PORT -b $IP
```

## Existing Bugs
Heroku has problems with calling apps
