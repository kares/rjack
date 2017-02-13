#!/usr/bin/env jruby
#.hashdot.profile += jruby-shortlived

#--
# Copyright (c) 2012-2017 David Kellum
#
# Licensed under the Apache License, Version 2.0 (the "License"); you
# may not use this file except in compliance with the License.  You
# may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.  See the License for the specific language governing
# permissions and limitations under the License.
#++

require 'rubygems'
require 'bundler/setup'

require 'rjack-logback'

RJack::Logback.config_console
if ARGV.include?( '-v' ) || ARGV.include?( '--verbose' )
  RJack::Logback.root.level = :debug
else
  RJack::Logback[ 'org.apache.zookeeper' ].level = :warn
end

require 'minitest/unit'
require 'minitest/autorun'

require 'rjack-solr'

class TestSolr < MiniTest::Unit::TestCase

  import 'org.apache.solr.servlet.SolrDispatchFilter'

  def test_load
    assert( SolrDispatchFilter )
  end

end
