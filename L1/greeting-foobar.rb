def greeting(name, surname, age)
    if age < 18
        return "Hey, #{name} #{surname}, you're younger than 18, but it's still great that you want to learn pragramming! ;)"
    end
    "Hello, #{name} #{surname}, let's get started!"
end

def foobar(first, second)
    return second if first == 20
    return first if second == 20
    first + second
end

loop do
    print "Enter 1 to summon 'greeting'. Enter 2 to summon 'foobar'. Or, if you wanna escape this loop, enter 0. :) "
    choice = gets.to_i
    
    if choice == 1
        print "What's your name? "
        name = gets.chomp

        print "And, please, enter your surname... "
        surname = gets.chomp

        print "How old are you, dear? "
        age = gets.to_i

        print "#{greeting(name, surname, age)}\n"
    end

    if choice == 2
        print "Enter your first number: "
        first = gets.to_i

        print "Enter your second number: "
        second = gets.to_i

        print "The answer is: #{foobar(first, second)}\n"
    end

    break if choice == 0
end