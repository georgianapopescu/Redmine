@echo off
rem Populate databases and load default data

CALL C:\Bitnami\REDMIN~1.6-3\scripts\setenv.bat

cd C:\Bitnami\redmine-3.4.6-3/apps/redmine\htdocs
cmd /C bundle install --local --without development test sqlite --binstubs --deployment
C:\Bitnami\redmine-3.4.6-3/ruby\bin\ruby.exe bin\rake generate_secret_token
C:\Bitnami\redmine-3.4.6-3/ruby\bin\ruby.exe bin\rake db:migrate RAILS_ENV="production"

C:\Bitnami\redmine-3.4.6-3/ruby\bin\ruby.exe bin\rake redmine:load_default_data RAILS_ENV="production" < lng.txt
              