# These extensions allow properly serializing and autoloading of
# Classes, Modules and Structs

require 'yaml'
if YAML.parser.class.name =~ /syck/i
  require File.expand_path('../syck_ext', __FILE__)
  require File.expand_path('../serialization/active_record', __FILE__)
elsif YAML.parser.class.name =~ /yecht/i
  require File.expand_path('../serialization/active_record', __FILE__)
else
  require File.expand_path('../psych_ext', __FILE__)
end
