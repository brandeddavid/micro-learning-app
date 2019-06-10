require 'bundler'
Bundler.require

require './app/app'
require './app/controllers/user'

use UserController
run MicroLearningApp