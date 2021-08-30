require 'json'
require 'yaml'
require 'ostruct'

class FrontMessage 
    @data = JSON.parse(YAML.load(File.read('features/support/data/field_message.yaml')).to_json, object_class: OpenStruct)

    def self.get(info)
        @data.send(info)
    end    
end