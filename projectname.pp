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
} # End node avm5.llnl.gov
