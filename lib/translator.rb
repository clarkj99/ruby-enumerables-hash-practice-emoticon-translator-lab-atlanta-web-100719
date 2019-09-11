require "yaml"

def load_library (file_path)
  emoticons = YAML.load_file(file_path)
  e_hash = {:get_meaning => {},:get_emoticon => {} }
 
  emoticons.reduce(e_hash) do |item, (key,value)|
    item[:get_meaning][value[1]] = key
    item[:get_emoticon][value[0]] = value[1]
    item
  end
  
  e_hash
end

def get_japanese_emoticon (file_path, emoticon)
  library = load_library(file_path)
  library[:get_meaning].fetch(emoticon)
end

def get_english_meaning
  # code goes here
end