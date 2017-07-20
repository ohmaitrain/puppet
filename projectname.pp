node "avm5.llnl.gov" {

file { '/root/example_file.txt':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "700",
    content => "Congratulations!
Puppet has created this file.
",}

file { '/etc/hosts':
    owner => 'root',
    group => 'root',
    source => '/puppet/hosts',
    mode => '0644'
,}

file { '/etc/resolv.conf':
    owner => 'root',
    group => 'root',
    source => '/puppet/resolv.conf',
    mode => '0644'
,}

cron { 'job':
   command => 'cd /puppet && git pull',
   user => 'root',
   minute => '*'
,}

cron { 'puppet_apply':
    command => 'puppet apply /puppet/projectname.pp'
    user => root
    minute => '*'
,}

} # End node avm5.llnl.gov
