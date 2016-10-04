#!/usr/bin/env ruby

  require 'erb'

  our_class = ["Zachary", "Jon", "Keith", "Luis", "Michael", "Chris", "Brent"]

  less_than_5 = []

  our_class.each do |name|
     less_than_5 << name if name.length < 5
  end

  sentence = "Ruby is actually fun once you get used to it."

  four_characters = []

  sentence.split.each do |words|
    four_characters << words if words.length == 4
  end

  movies = []

  movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
  }
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
  }
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
  }
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
  }
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
  }

  movies_100 =  movies.select{|show| show[:budget] < 100}.collect {|show| show[:title]}

  starred_leo = movies.select{|movie| movie [:stars].include? "Leonardo DiCaprio"}.collect{ |movie| movie [:title]}


  new_file = File.open("./index.html", "w+")
    new_file << ERB.new(File.read("index.html.erb")).result(binding)
    new_file.close
