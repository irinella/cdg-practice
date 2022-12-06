def word(word)
    return 2**word.length if word[-2..-1].downcase=="cs"

    word.reverse
end

def pokeball(pokemons, amount_of_new_pokemons)
    amount_of_new_pokemons.times do
        print "\nEnter your pokemon name: "
        name = gets.chomp
        print "\nNow enter his/her color: "
        color = gets.chomp

        pokemons << { name: name, color: color }
    end

    pokemons
end

pokemons = []

loop do
    print "Enter 1 to summon 'words'. Enter 2 to summon 'pokemon'. Or, if you wanna escape this loop, enter 0. :) "
    choice = gets.to_i

    if choice == 1
        print "Enter any word of your liking: "
        print "#{word(gets.chomp)}\n"
    end

    if choice == 2
        print "How many new pokemons would you like to register? "
        pokemons = pokeball(pokemons, gets.to_i)
        print "#{pokemons}\n"
    end

    break if choice == 0
end