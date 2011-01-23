#!/usr/bin/env ruby
require 'rubygems'
require 'rest-graph'
rg = RestGraph.new(:access_token => '127289177338104')
rg.get('me')
rg.get('me/likes')
rg.get('search', :q => 'taiwan')

