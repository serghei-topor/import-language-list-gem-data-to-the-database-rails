![Project screenshot](https://github.com/serghei-topor/import-language-list-gem-data-to-the-database-rails/blob/master/project-screenshot.png?raw=true "Project Screenshot")
RoR project example that shows how to import language_list gem dump data to postgresql database

In all my projects where I need to use list of international languages I use awesome gem ***languages_list*** https://github.com/scsmith/language_list. Sometimes languages should be stored in the database. In this I showed how to do a migration of languages_list data into the database.

### Project Setup: ###

#### Step 1. Install necessary gems ####
```
bundle install
```
#### Step 2. Database configuration ####
You can change config in /config/application.yml
#### Step 3. Run DB migrations ####
```
rake db:setup
```
```
rake db:migrate
```
#### Step 4. Import data from language_list gem ####
```
rake languages:import
```
#### Step 5. Launch web server  ####
```
rails s
```

Enjoy!
