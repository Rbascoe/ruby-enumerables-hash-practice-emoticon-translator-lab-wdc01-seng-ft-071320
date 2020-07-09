# require modules here
require 'yaml'
require 'pry'

def load_library(emoticon_library)
  # code goes here
  emoticon_library = YAML.load_file('lib/emoticons.yml')
  inner_hash = {}
  emoticon_library.each do |key, value|
    inner_hash[key] = {}
    inner_hash[key][:english] = value[0]
    inner_hash[key][:japanese] = value[1]
  end
  inner_hash
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  new_library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  if emoticon == emoticon 
    return emoticon
    else
      puts "Sorry, that emoticon was not found"
  end
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  
end

