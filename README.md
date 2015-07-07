# Ruby » <br> IntendedUri to manage a user's URI in a Rails session

* Doc: <http://sixarm.com/sixarm_ruby_intended_uri/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_intended_uri>
* Repo: <http://github.com/sixarm/sixarm_ruby_intended_uri>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Get and set the user's intended uri in the Rails session array.

For docs go to <http://sixarm.com/sixarm_ruby_intended_uri/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_intended_uri

Bundler:

    gem "sixarm_ruby_intended_uri", "~>1.0.4"

Require:

    require "sixarm_ruby_intended_uri"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_intended_uri --trust-policy HighSecurity


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


## Changes

* 2012-03-14 1.0.4 Update docs, tests
