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

common: &default_settings
  # Required license key associated with your New Relic account.
  license_key: 397e2b9da658e9e0ddb4cd5a8fa66cb9e1f222d8

  # Your application name. Renaming here affects where data displays in New
  # Relic.  For more details, see https://docs.newrelic.com/docs/apm/new-relic-apm/maintenance/renaming-applications
  app_name: My Application

  # To disable the agent regardless of other settings, uncomment the following:
  # agent_enabled: false

  # Logging level for log/newrelic_agent.log
  log_level: info


# Environment-specific settings are in this section.
# RAILS_ENV or RACK_ENV (as appropriate) is used to determine the environment.
# If your application has other named environments, configure them here.
development:
  <<: *default_settings
  app_name: My Application (Development)

  # NOTE: There is substantial overhead when running in developer mode.
  # Do not use for production or load testing.
  developer_mode: true

test:
  <<: *default_settings
  # It doesn't make sense to report to New Relic from automated test runs.
  monitor_mode: false

staging:
  <<: *default_settings
  app_name: My Application (Staging)

production:
  <<: *default_settings
