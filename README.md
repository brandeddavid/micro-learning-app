# micro-learning-app
[![Build Status](https://travis-ci.org/brandeddavid/micro-learning-app.svg?branch=develop)](https://travis-ci.org/brandeddavid/micro-learning-app)
[![Coverage Status](https://coveralls.io/repos/github/brandeddavid/micro-learning-app/badge.svg)](https://coveralls.io/github/brandeddavid/micro-learning-app)


Micro-Learning app is a responsive web application that sends you one page per day about something you want to learn. Could be: a new Language, a random Wikipedia page, React documentation, a page from the CIA World Factbook, anything!

# Set up
Clone the project

`git clone https://github.com/brandeddavid/micro-learning-app.git`

Change directory

`cd micro-learning-app`

Install required gems

`bundle install`

Make a .env file and populate it with guidance from the [.env.example](https://github.com/brandeddavid/micro-learning-app/blob/develop/.env.example) file

Run db migrations

`rake db:migrate`

Run the app

`shotgun`
