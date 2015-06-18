require 'spec_helper'

describe 'simple-web::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe file('/var/www/index.html') do
    it { should be_file }
    it { should be_mode 644 }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe service('apache2-default') do
    it { should be_running }
  end
end
