# Ruby » <br> IntendedUri to manage a user's URI in a Rails session

* Doc: <http://sixarm.com/sixarm_ruby_intended_uri/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_intended_uri>
* Repo: <http://github.com/sixarm/sixarm_ruby_intended_uri>
<!--HEADER-SHUT-->


## Introduction

Get and set the user's intended uri in the Rails session array.

For docs go to <http://sixarm.com/sixarm_ruby_intended_uri/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_intended_uri", ">= 1.0.5", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_intended_uri -v ">= 1.0.5, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_intended_uri -v ">= 1.0.5, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_intended_uri"

<!--INSTALL-SHUT-->


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
