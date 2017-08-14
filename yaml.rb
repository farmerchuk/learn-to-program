require 'yaml'

filename = "textfile.txt"
some_text = "Here is some text that I just thought up.\nAnd here is some more on another line!"

def create_yaml_file(object, filename)
  File.open filename, 'w' do |file|
    file.write(object.to_yaml)
  end
end

def read_yaml_file(filename)
  yaml_string = File.read filename
  YAML::load yaml_string
end

#create_yaml_file(some_text, filename)
puts read_yaml_file(filename)
