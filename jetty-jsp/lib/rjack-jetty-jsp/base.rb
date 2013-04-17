#--
# Copyright (c) 2008-2013 David Kellum
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

module RJack
  module Jetty
    module Jsp
      JETTY_VERSION = '9.0.2'
      GEM_VERSION = '0'
      VERSION = [ JETTY_VERSION, GEM_VERSION ].join( '.' )
      JSP_VERSION = '2.2'

      JETTY_JSP_DIR = File.dirname( __FILE__ ) # :nodoc:

      TEST_WAR = File.join( JETTY_JSP_DIR, '..', '..', 'webapps', 'test.war' )
    end
  end
end
