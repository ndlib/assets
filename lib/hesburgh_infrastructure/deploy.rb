cap_path = File.join(File.dirname(__FILE__),"capistrano")
require "#{cap_path}/common"
require "#{cap_path}/environments"
require "#{cap_path}/deploy"
require "#{cap_path}/db"
require "#{cap_path}/prompt_branch"
