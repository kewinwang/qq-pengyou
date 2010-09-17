$LOAD_PATH << File.join(File.dirname(__FILE__),"lib")
require 'qq-pengyou'

include_files = ["README*", "test.rb", "lib/**/*"].map do |glob|
  Dir[glob]
end.flatten

spec = Gem::Specification.new do |s|
	s.name = 'qq-pengyou'
	s.version = QQPengyou::VERSION
	s.author = 'Jason Lee'
  s.email = 'huacnlee@gmail.com'
  s.homepage = "http://github.com/huacnlee/qq-pengyou"
  s.description = 'QQ opensns SDK api for Ruby, http://opensns.qq.com/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'QQ opensns SDK api for Ruby'
  s.files = include_files
  s.has_rdoc = true
end

