# Instructions are written inline.

# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html

# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array


# blender class
class Blender
    attr_accessor :blender_on # allow writing or reading blender_on

    # initialize blender to be off by default
    def initialize()
      @blender_on = false 
    end

    # method that turns on blender
    def switch_on
      @blender_on = true  
    end

    # method that turns off blender
    def switch_off
      @blender_on = false
    end

  # blender method
  def blend(smoothie_ingredients)
      smoothie = smoothie_ingredients.keys # create array called smoothing from the hash keys
      joined_ingredients = smoothie.join.delete " " # split the array into word strings and deleting spaces
      ing_chars = joined_ingredients.split("").shuffle.join "" # split the words into character, shuffle them, and then rejoing them into a string
      puts ing_chars # print the shuffled string
  end

  def start(smoothie_ingredients)
    puts "The blender is currently off."
    puts "what would you like to do? (on, nothing)"
    choice = gets.chomp


    while choice != "on"  
      if choice == "nothing"
        puts "Blender is still off. Cannot Blend!"
        puts "What would you like to do? (on, nothing)"
        choice = gets.chomp
      else
        puts "I don't understand that."
        puts "Try again"
        choice = gets.chomp
      end
    end

    @blender_on = true
    puts "The blender is now on. Blending:"
    blender = blend(smoothie_ingredients)
    blender

     
  end

end


my_blender = Blender.new
my_blender.start(smoothie_ingredients)