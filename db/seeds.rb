require 'net/http'
require 'json'
require 'uri'
require 'pp'


# API INFO
app_id = "4ea80630"
app_key = "eb283e415a5a64be11d01a1b46f7f67e"

endpoint = "entries"
language_code = "en-gb"


(1..5).each do |i|
  fake_animal = Faker::Creature::Animal.name
  # Setting up the api call with the necessary headers
  url = "https://od-api.oxforddictionaries.com/api/v2/#{endpoint}/en-gb/#{fake_animal}?lexicalCategory=noun&fields=definitions"
  uri = URI(url)
  request = Net::HTTP::Get.new(uri)
  request.add_field('app_id', app_id)
  request.add_field('app_key', app_key)
  res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') { |http|
    http.request(request)
  }
  word = JSON.parse(res.body)
  results = word["results"]
  # It's hacky but with the way the data is structured, we make do.
  definition = results[0]["lexicalEntries"][0]["entries"][0]["senses"][0]["definitions"]
  definition = definition.to_s
  definition.gsub!("[", "")
  definition.gsub!("]", "")

  Animal.create(name: fake_animal, definition: definition)
end

(1..5).each do |i|
  fake_positive_adjective = Faker::Adjective.positive
  url = "https://od-api.oxforddictionaries.com/api/v2/#{endpoint}/en-gb/#{fake_positive_adjective}?lexicalCategory=adjective&fields=definitions"
  uri = URI(url)
  request = Net::HTTP::Get.new(uri)
  request.add_field('app_id', app_id)
  request.add_field('app_key', app_key)
  res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') { |http|
    http.request(request)
  }
  word = JSON.parse(res.body)
  results = word["results"]
  # It's hacky but with the way the data is structured, we make do.
  definition = results[0]["lexicalEntries"][0]["entries"][0]["senses"][0]["definitions"]
  definition = definition.to_s
  definition.gsub!("[", "")
  definition.gsub!("]", "")
  Adjective.create(word: fake_positive_adjective, definition: definition)
end

(1..5).each do |i|
  fake_negative_adjective = Faker::Adjective.negative
  url = "https://od-api.oxforddictionaries.com/api/v2/#{endpoint}/en-gb/#{fake_negative_adjective}?lexicalCategory=adjective&fields=definitions"
  uri = URI(url)
  request = Net::HTTP::Get.new(uri)
  request.add_field('app_id', app_id)
  request.add_field('app_key', app_key)
  res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') { |http|
    http.request(request)
  }
  word = JSON.parse(res.body)
  results = word["results"]
  # It's hacky but with the way the data is structured, we make do.
  definition = results[0]["lexicalEntries"][0]["entries"][0]["senses"][0]["definitions"]
  definition = definition.to_s
  definition.gsub!("[", "")
  definition.gsub!("]", "")
  Adjective.create(word: fake_positive_adjective, definition: definition)
end


