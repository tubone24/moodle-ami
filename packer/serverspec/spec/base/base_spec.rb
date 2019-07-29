require 'spec_helper'

# locale(cloud.cfg)
describe file('/etc/cloud/cloud.cfg') do
  its(:content) { should match(/^locale: ja_JP.UTF-8/) }
end

# locale(i18n)
describe file('/etc/sysconfig/i18n') do
  its(:content) { should match(/^LANG=ja_JP.UTF-8/) }
end

# timezone&localtime
describe command('date') do
  its(:stdout) { should match /JST/ }
end

# nproc
describe command('ulimit -Su') do
  its(:stdout) { should match /65536/ }
end

describe command('ulimit -Hu') do
  its(:stdout) { should match /65536/ }
end

# nofile
describe command('ulimit -Sn') do
  its(:stdout) { should match /65536/ }
end

describe command('ulimit -Hn') do
  its(:stdout) { should match /65536/ }
end

# Kernel parameters tuning by sysctl
describe file('/etc/sysctl.conf') do
  it { should be_file }
  it { should be_mode 644 }
  its(:content) { should match(/^vm.swappiness/) }
  its(:content) { should match(/^net.ipv4.tcp_tw_recycle/) }
  its(:content) { should match(/^net.ipv4.tcp_tw_reuse/) }
  its(:content) { should match(/^net.ipv4.tcp_max_tw_buckets/) }
  its(:content) { should match(/^net.ipv4.ip_local_port_range/) }
  its(:content) { should match(/^net.ipv4.tcp_fin_timeout/) }
  its(:content) { should match(/^net.ipv4.tcp_max_syn_backlog/) }
  its(:content) { should match(/^net.core.somaxconn/) }
  its(:content) { should match(/^net.core.netdev_max_backlog/) }
  its(:content) { should match(/^net.ipv4.tcp_keepalive_time/) }
  its(:content) { should match(/^net.ipv4.tcp_keepalive_intvl/) }
  its(:content) { should match(/^net.ipv4.tcp_keepalive_probes/) }
  its(:content) { should match(/^net.ipv4.tcp_rfc1337/) }
  its(:content) { should match(/^net.ipv4.tcp_syncookies/) }
  its(:content) { should match(/^kernel.threads-max/) }
  its(:content) { should match(/^kernel.pid_max/) }
  its(:content) { should match(/^vm.max_map_count/) }
  its(:content) { should match(/^fs.file-max/) }
  its(:content) { should match(/^net.ipv6.conf.all.disable_ipv6/) }
  its(:content) { should match(/^net.ipv6.conf.default.disable_ipv6/) }
  its(:content) { should match(/^net.core.rmem_max/) }
  its(:content) { should match(/^net.core.wmem_max/) }
  its(:content) { should match(/^net.core.rmem_default/) }
  its(:content) { should match(/^net.core.wmem_default/) }
  its(:content) { should match(/^net.core.optmem_max/) }
  its(:content) { should match(/^net.ipv4.tcp_rmem/) }
  its(:content) { should match(/^net.ipv4.tcp_wmem/) }
  its(:content) { should match(/^net.ipv4.tcp_slow_start_after_idle/) }
  its(:content) { should match(/^net.ipv4.udp_rmem_min/) }
  its(:content) { should match(/^net.ipv4.udp_wmem_min/) }
  its(:content) { should match(/^net.ipv4.conf.all.send_redirects/) }
  its(:content) { should match(/^net.ipv4.conf.all.accept_redirects/) }
  its(:content) { should match(/^net.ipv4.conf.all.accept_source_route/) }
  its(:content) { should match(/^net.ipv4.conf.all.log_martians/) }
  its(:content) { should match(/^net.ipv4.tcp_fastopen/) }
end

# SELinux
describe command('/usr/sbin/getenforce') do
  its(:stdout) { should match /Disabled/ }
end

# iptables
describe service('iptables') do
  it { should_not be_enabled }
end

# ip6tables
describe service('ip6tables') do
  it { should_not be_enabled }
end

# group
describe group(property['aws-training'][:group]) do
  it { should exist }
  it { should have_gid property['aws-training'][:gid] }
end

# user
describe user(property['aws-training'][:user]) do
  it { should exist }
  it { should have_uid property['aws-training'][:uid] }
  it { should belong_to_group property['aws-training'][:group] }
end

describe file('/etc/passwd') do
  it { should be_file }
  its(:content) { should match(/#{property['aws-training'][:user]}/) }
end

# ssh dir
describe file("/home/#{property['aws-training'][:user]}/.ssh/") do
  it { should be_directory }
  it { should be_owned_by(property['aws-training'][:user]) }
  it { should be_grouped_into(property['aws-training'][:group]) }
  it { should be_mode 700 }
end

# sudoers
describe file('/etc/sudoers.d/users') do
  it { should be_file }
  it { should be_mode 440 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) { should match /^aws-training ALL=\(ALL\) NOPASSWD\:ALL$/ }
end

# authorised_keys
describe file("/home/#{property['aws-training'][:user]}/.ssh/authorized_keys") do
  it { should be_file }
  it { should be_owned_by(property['aws-training'][:user]) }
  it { should be_grouped_into(property['aws-training'][:group]) }
  it { should be_mode 600 }
end

# package
%w[epel-release bind-utils jq tcpdump].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# auditlog
describe file('/etc/audit/auditd.conf') do
  it { should be_file }
  it { should be_mode 640 }
  its(:content) { should match /^num_logs = 14$/ }
end

describe file('/etc/audit/audit.rules') do
  it { should be_file }
  it { should be_mode 640 }
end

describe command('auditctl -l') do
  its(:stdout) { should match /-a always,exit -F arch=b64 -S execve/ }
end

# bash
describe file('/etc/profile.d/bash_timeout.sh') do
  it { should be_file }
  it { should be_mode 644 }
end

# ntp
describe package('ntp') do
  it { should_not be_installed }
end

# chrony
describe package('chrony') do
  it { should be_installed }
end

describe file('/etc/chrony.conf') do
  it { should be_file }
  it { should be_mode 644 }
end

describe service('chronyd') do
  it { should be_enabled }
end

# SSHD
describe file('/etc/ssh/sshd_config') do
  it { should be_file }
  it { should be_mode 644 }
  its(:content){ should match /^PermitRootLogin no$/ }
end

# logrotate files
%w[cron messages secure syslog awslogs chrony cloud-init].each do |file|
  describe file("/etc/logrotate.d/#{file}") do
    it { should be_file }
    it { should be_mode 644 }
  end
end

# AWSLogs
describe service('awslogs') do
  it { should be_enabled }
end

describe file('/etc/awslogs/awscli.conf') do
  it { should be_file }
  it { should be_mode 644 }
  its(:content) { should match /^region = ap-northeast-1/ }
end

describe file('/var/awslogs/state') do
  it { should be_directory }
  it { should be_owned_by('root') }
  it { should be_grouped_into('root') }
  it { should be_mode 755 }
end

# cloud.cfg
describe file('/etc/cloud/cloud.cfg') do
  it { should be_file }
  its(:content){ should match /# - update_hostname/ }
end
