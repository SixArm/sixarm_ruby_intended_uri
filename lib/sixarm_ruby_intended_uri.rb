# -*- coding: utf-8 -*-

=begin rdoc

= SixArm Ruby Gem: IntendedUri

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Get and set the user's intended uri in the Rails session array.

==Example
  require 'intended_uri'
  class ApplicationController
    ...
    include IntendedUri
    ...
    def sign_in_success
      redirect_to intended_uri || welcome_uri
    end
    ...
    def sign_in_failure
      intended_uri=request.request_uri
      redirect_to sign_in
    end

=end


require 'uri'

class IntendedUri

  # Get the user's intended uri in the Rails session array

  def intended_uri
    session[:intended_uri]
  end

  # Set the user's intended uri in the Rails session array

  def intended_uri=(uri=request.request_uri)
    session[:intended_uri] = uri
  end

end
