Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_intended_uri"
  s.summary           = "SixArm Ruby Gem: get and set a user's request URI in the Rails session array"
  s.version           = "1.0.4"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_intended_uri.rb']
  s.test_files        = ['test/sixarm_ruby_intended_uri_test.rb']

end
