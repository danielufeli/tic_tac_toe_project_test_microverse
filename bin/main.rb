#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/player'

@game = Game.new

puts 'player one enter your name'
player_one = gets.chomp
puts 'player two enter your name too'
player_two = gets.chomp
while player_two == player_one
  puts 'ooops!! you both can\'t have the same name.'
  player_two = gets.chomp
end
puts 'player one enter your icon.'
icon1 = gets.chomp
puts 'player two enter your icon.'
icon2 = gets.chomp
@game.player1 = Player.new(player_one, icon1)
@game.player2 = Player.new(player_two, icon2)
puts @game.player1.name
puts @game.player2.name

played_count = 1
until @game.game_ended(played_count)
  puts @game.board.print_board
  if played_count.odd?
    puts "#{@game.player1.name}'s turn"
    index = gets.chomp
    until @game.valid_move(index.to_i)
      puts 'enter a valid value, try again'
      index = gets.chomp
    end
    @game.board.update_board(index, @game.player1.icon)
    @game.player1.square.push(index.to_i)
  else
    puts "#{@game.player2.name}'s turn"
    index = gets.chomp
    until @game.valid_move(index.to_i)
      puts 'enter a valid value, try again'
      index = gets.chomp
    end
    @game.board.update_board(index, @game.player2.icon)
    @game.player2.square.push(index.to_i)
  end
  played_count += 1
end
@game.board.print_board

if @game.winner
  puts "Game over: #{@game.winner} wins!!!"
else
  puts "It's a draw!"
end
