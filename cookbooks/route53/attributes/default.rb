default[:route53][:ttl]  = "60"

default[:route53][:zone]  = "YOURDOMAIN.com"

default[:route53][:node_name] = nil

aws = Chef::DataBagItem.load('aws', 'route53') rescue {}

default.route53[:aws][:access_key] = ( aws['aws_access_key_id'] rescue nil )
default.route53[:aws][:secret_key] = ( aws['aws_secret_access_key'] rescue nil )
