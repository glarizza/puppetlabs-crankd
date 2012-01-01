# Class: crankd
#
# This module manages crankd, one of the binaries from the
#   [Pymacadmin suite.](https://github.com/acdha/pymacadmin)
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class crankd {

  File {
    owner => '0',
    group => '0',
    mode  => '0755',
  }

  file { ['/usr/local/sbin', '/Library/Application Support/crankd']:
    ensure => directory,
  }

  file { '/Library/Application Support/crankd/PyMacAdmin':
    ensure  => directory,
    source  => 'puppet:///modules/crankd/PyMacAdmin',
    recurse => true,
  }

  file { '/usr/local/sbin/crankd.py':
    ensure => present,
    source => 'puppet:///modules/crankd/crankd.py',
    mode   => '0755',
  }
}
