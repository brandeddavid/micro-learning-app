require 'bundler'
Bundler.require

require './app/app'
require './app/controllers/user'
require './app/controllers/article'

use UserController
use ArticleController
run MicroLearningApp