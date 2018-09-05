require 'serverspec'

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

# The package version of the installs

describe package('fusionauth-app') do
  it { should be_installed }
end

describe service('fusionauth-app') do
  it { should_not be_enabled }
  it { should_not be_running }
end

describe package('fusionauth-search') do
  it { should be_installed }
end

describe service('fusionauth-search') do
  it { should_not be_enabled }
  it { should_not be_running }
end

# The zip version of installs

describe file('$HOME/fusionauth/fusionauth-app') do
  it { should be_directory }
end

describe file('$HOME/fusionauth/fusionauth-search') do
  it { should be_directory }
end

describe file('$HOME/fusionauth/config/fusionauth.properties') do
  it { should be_file }
end

describe file('$HOME/fusionauth/bin/startup.sh') do
  it { should be_file }
end

describe file('$HOME/fusionauth/bin/shutdown.sh') do
  it { should be_file }
end
