#--
# Copyright (c) 2008-2017 David Kellum
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
    JETTY_VERSION = '9.4.14'
    VERSION = JETTY_VERSION + '.0'
    JETTY_BUILD = 'v20181114'
    SERVLET_API_VERSION = '3.1.0'

    JETTY_DIR = File.dirname( __FILE__ ) # :nodoc:
  end
end
