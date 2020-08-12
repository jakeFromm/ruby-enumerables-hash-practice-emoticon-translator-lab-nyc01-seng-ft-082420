# require modules here
require "yaml"
require "pry"


def load_library(filepath)
  # code goes here
  data = YAML.load_file(filepath)
    #binding.pry
  inner_keys = [:english, :japanese]  
  data.each do |key, value|
    data[key] = inner_keys.zip(value).to_h
  end  
  data
  #binding.pry
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  data = load_library(path)
  message = "Sorry, that emoticon was not found"
  data.each do |meaning, emos|
    #binding.pry
    if emos[:english] == emoticon
      message = emos[:japanese]
    end 
  end
  message 
end

<<<<<<< HEAD
def get_english_meaning(path, emoticon)
  # code goes here
  data = load_library(path)
  message = "Sorry, that emoticon was not found"
=======
def get_english_meaning(filepath, emoticon)
  # code goes here
  data = load_library('./lib/emoticons.yml')
  message = "Sorry, that emoticon was not found."
>>>>>>> 1b97ebb5003fdff0f1fd435c6ec60f37a66772d9
  #binding.pry
  data.each do |meaning, emos|
    #binding.pry
    if emos.has_value?(emoticon)
<<<<<<< HEAD
      message = meaning
    end 
  end
  message 
=======
      return meaning
    end 
    return message
  end
   
>>>>>>> 1b97ebb5003fdff0f1fd435c6ec60f37a66772d9
  #binding.pry
end


