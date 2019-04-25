# SixArm.com → Ruby → <br> IntendedUri to manage a user's URI in a Rails session

* Doc: <http://sixarm.com/sixarm_ruby_intended_uri/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_intended_uri>
* Repo: <http://github.com/sixarm/sixarm_ruby_intended_uri>
<!--header-shut-->


## Introduction

Get and set the user's intended uri in the Rails session array.

For docs go to <http://sixarm.com/sixarm_ruby_intended_uri/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_intended_uri

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_intended_uri'

### Require

To require the gem in your code:

    require 'sixarm_ruby_intended_uri'

<!--install-shut-->


## Example

    require "sixarm_ruby_intended_uri"

    class ApplicationController

      include IntendedUri

      def sign_in_success
        redirect_to intended_uri || welcome_uri
      end

      def sign_in_failure
        intended_uri=request.request_uri
        redirect_to sign_in
      end

      ...
  
    end
