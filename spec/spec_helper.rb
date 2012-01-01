require 'mocha'
require 'puppet'
require 'rspec-puppet'

RSpec.configure do |config|
  config.before :each do
    @puppetdir  = Dir.mktmpdir('crankd')
    manifestdir = File.join(@puppetdir, 'manifests')
    Dir.mkdir(manifestdir)
    FileUtils.touch(File.join(manifestdir, 'site.pp'))
    Puppet[:confdir] = @puppetdir
  end

  config.after :each do
    FileUtils.remove_entry_secure(@puppetdir)
  end

  config.module_path = File.join(File.dirname(__FILE__), '../../')

  config.mock_with :mocha
end
