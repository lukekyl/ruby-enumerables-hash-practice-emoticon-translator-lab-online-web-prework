require "yaml"

def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon"=>{}}
  YAML.load_file(path).each { |meaning, emoticon|
    english, japanese = emoticon
    emoticons["get_meaning"][japanese] = meaning
    emoticons["get_emoticon"][english] = japanese
  }
  p emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  meaning = emoticons["get_emoticon"][emoticon]
  if meaning
    p meaning
  else
    puts "Sorry, we can't find that emoticon."
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  meaning = emoticons["get_meaning"][emoticon]
  if meaning
    p meaning
  else
    puts "Sorry, we can't find that English emoticon."
  end
end