#
# This file configures the New Relic Agent.  New Relic monitors Ruby, Java,
# .NET, PHP, Python and Node applications with deep visibility and low
# overhead.  For more information, visit www.newrelic.com.
#
# Generated November 09, 2015
# 
# This configuration file is custom generated for app43649258@heroku.com
#
# For full documentation of agent configuration options, please refer to
# https://docs.newrelic.com/docs/agents/ruby-agent/installation-configuration/ruby-agent-configuration

common:
  license_key: 397e2b9da658e9e0ddb4cd5a8fa66cb9e1f222d8
  app_name: Bitcoin & News
  log_level: info
# Environment-specific settings are in this section.
# RAILS_ENV or RACK_ENV (as appropriate) is used to determine the environment.
# If your application has other named environments, configure them here.
development:
  app_name: Bitcoin & News (Development)
  developer_mode: true
test:
  monitor_mode: false
staging:
  app_name: Bitcoin & News (Staging)
production:
  app_name: Bitcoin & News (production)
