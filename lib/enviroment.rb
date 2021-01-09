require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load

require_relative "./cuisine_dishes_cli/version"
require_relative "./cuisine_dishes_cli/cli"
require_relative "./cuisine_dishes_cli/api"
require_relative "./cuisine_dishes_cli/cuisine"
require_relative "./cuisine_dishes_cli/dish"