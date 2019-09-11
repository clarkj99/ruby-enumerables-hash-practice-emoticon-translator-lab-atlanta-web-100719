require "yaml"

def load_library (file_path)
  emoticons = YAML.load_file(file_path)
  e_hash = {:get_meaning => {},:get_emoticon => {} }
 
#  e_hash[:get_meaning] = emoticons.reduce({}) do |meanings, (key, value)|  
#    meanings[value[1]] = key  
#    meanings
# end
 
  emoticons.reduce(e_hash) do |item, (key,value)|
    item[:get_meaning][value[1]] = key
    item[:get_emoticon][value[0]] = key
    item
  end
  
  e_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end