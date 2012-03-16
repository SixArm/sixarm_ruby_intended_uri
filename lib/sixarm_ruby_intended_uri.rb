# -*- coding: utf-8 -*-
=begin rdoc
Please see README
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
