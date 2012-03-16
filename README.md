# SixArm.com » Ruby » <br> IntendedUri to manage a user's URI in a Rails session

* Docs: <http://sixarm.com/sixarm_ruby_intended_uri/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_intended_uri>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Get and set the user's intended uri in the Rails session array.

For docs go to <http://sixarm.com/sixarm_ruby_intended_uri/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_intended_uri

Bundler:

    gem "sixarm_ruby_intended_uri", "=1.0.4"

Require:

    require "sixarm_ruby_intended_uri"


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
