# Storage Australia

## Overview
This app allows you to record and update records of goods in a storage facility.


## Installation Instructions
This program was coded and tested in ruby 2.5.3.
In the root folder, please run the following commands in your terminal. This will ensure bundler and all the respective gems are installed.

    $ gem install bundler
    $ bundle install

## Usage Instructions
From root folder, please key in the following command. This will create the database, run the migration files, create seeds and launch the server in your web browser in "http://localhost:3000/".

    $ rails db:create
    $ rails db:migrate
    $ rails db:seed
    $ rails s

## To do
* Build out tests
* Improve Front end
* Improve the notices (notify users if failed)
* Improve the csv upload to deal with non-valid data inputs / formats
* Include devise and appropriate authorizations
* Instead of deleting records, fix 'status' bug
