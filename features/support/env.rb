require 'rspec'
require 'page-object'

$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'require_all'
require_all 'lib'
require_all 'spec'
require 'pry'

World(PageObject::PageFactory)
