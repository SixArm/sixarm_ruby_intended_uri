# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "intended_uri"
require "session_mock"
require "uri"

class IntendedUriTest < Minitest::Test

 include IntendedUri

 def session
  @session||=Hash.new
 end

 def test_nil
  assert_not_nil(session,"session")
  assert_nil(intended_uri,"intended_uri")
 end

 def test_uri
  assert_not_nil(session,"session")
  uri=Uri.parse('http://example.com')
  intended_uri=uri
  assert_equal(uri,intended_uri)
 end

end

