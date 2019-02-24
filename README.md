# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

[logo]: https://getsynap.com/img/logos/synap_itg_lockup-1069e32b.png "Synap Logo"
# Synap CRM

* The Synap CRM runs on Ruby 2.5.1

* This application requires the jbuilder and postgres gems

* Fork this repo into your own Github repository

* Run "rails db:create" in your command line. Run "rails db:migrate" in your command line.

  * Double check that you are running PostgreSQL (not SQLite) in your database.yml file and in your Gemfile

* Place a copy of the CSV file you would like to seed the database in App>Lib>Seeds

* Run "rails db:seed" in your command line. Use the Rails console to confirm the database was seeded correctly with ActiveRecord querying.