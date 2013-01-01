# -*- ruby -*- encoding: utf-8 -*-

require 'rjack-tarpit/spec'

RJack::TarPit.specify do |s|
  require 'rjack-zookeeper/base'

  s.version = RJack::RZooKeeper::VERSION

  s.add_developer 'David Kellum', 'dek-oss@gravitext.com'

  s.assembly_version = 1.0
  s.jars = [ "zookeeper-#{ RJack::RZooKeeper::ZOOKEEPER_VERSION }.jar" ]

  s.depend 'rjack-slf4j',     '>= 1.6.5', '< 1.8'
  s.depend 'minitest',        '~> 2.3',   :dev
  s.depend 'rjack-logback',   '~> 1.2',   :dev
end
