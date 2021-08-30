require 'json'
require 'yaml'
require 'ostruct'

class FrontElements 
    @data = JSON.parse(YAML.load(File.read('features/support/data/set_element.yaml')).to_json, object_class: OpenStruct)

    def self.get(info)
        @data.send(info)
    end    
end