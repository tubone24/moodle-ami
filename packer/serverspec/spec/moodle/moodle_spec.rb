require 'spec_helper'

# CloudWatch Logs
describe file('/etc/awslogs/awslogs.conf') do
  it { should be_file }
  it { should be_mode 644 }
  its(:content) { should match /^\[\/var\/log\/audit\/audit\.log\]/ }
  its(:content) { should match /^\[\/var\/log\/messages\]/ }
  its(:content) { should match /^\[\/var\/log\/secure\]/ }
  its(:content) { should match /^\[\/var\/log\/cron\]/ }
  its(:content) { should match /^\[\/var\/log\/cloud-init\.log\]/ }
  its(:content) { should match /^\[\/var\/log\/awslogs\.log\]/ }
  its(:content) { should match /^\[\/var\/log\/httpd\/access_log\]/ }
  its(:content) { should match /^\[\/var\/log\/httpd\/error_log\]/ }
end

# package
%w[remi-release libwebp httpd mysql-server].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# package PHP
%w[php php-pecl-zip php-mysqlnd php-xml php-gd php-intl php-mbstring php-xmlrpc php-opcache php-soap].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# moodleDB installed
describe command("mysql -uroot -p#{property[:db_passwd]} -e 'show tables from moodle;'") do
  its(:stdout) { should match /mdl01_user/ }
end

# moodle installed
describe file('/var/www/html/moodle/index.php') do
  it { should be_file }
end

# moodle config uploaded
describe file('/var/www/html/moodle/config.php') do
  it { should be_file }
end



