#
# Cookbook Name:: haproxy
# Default:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform']
when "debian","ubuntu"
  default['haproxy']['dir'] = "/etc/haproxy"
when "smartos"
  default['haproxy']['dir'] = "/opt/local/etc"
else
  default['haproxy']['dir'] = "/etc/haproxy"
end


default['haproxy']['connect_timeout'] = "10000"
default['haproxy']['server_timeout'] = "200000"
default['haproxy']['client_timeout'] = "200000"
default['haproxy']['maxconn'] = "4096"
default['haproxy']['incoming_port'] = "80"
default['haproxy']['member_port'] = "8080"
default['haproxy']['enable_admin'] = true
default['haproxy']['balance_algorithm'] = "roundrobin"
default['haproxy']['member_check_inter'] = "2000"
default['haproxy']['member_weight'] = "1"
default['haproxy']['member_fall'] = "2"
default['haproxy']['member_rise'] = "5"
default['haproxy']['member_max_connections'] = "100"
default['haproxy']['stats_uri'] = "/haproxy/stats"
default['haproxy']['stats_auth'] = "admin:p455w0rd!"
