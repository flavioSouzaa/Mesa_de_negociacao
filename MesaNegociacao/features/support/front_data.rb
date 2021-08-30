require 'json'
require 'yaml'
require 'ostruct'

class FrontData 
    @data = JSON.parse(YAML.load(File.read('features/support/data/dados_fields.yaml')).to_json, object_class: OpenStruct)
    
    def self.get(info)
        @data.send(info)
    end    
end