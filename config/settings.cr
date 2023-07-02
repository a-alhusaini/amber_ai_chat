# About settings.cr File
#
# With `Amber::Server.configure` block you can redefine the Server configuration
# settings and use ENVIRONMENT variables and/or values evaluated at runtime.
#
# > Important! Yaml configurations are first class citizen and are loaded first before
# this file, we recommend to use yaml configurations before changing any settings here.
# Any uncommented setting here will override the YAML with the value set here.

Amber::Server.configure do |settings|
  settings.secrets["cohere_api_key"] = ENV["COHERE_API_KEY"]
end
