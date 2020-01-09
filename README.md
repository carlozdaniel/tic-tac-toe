# The Ruby Challenge: Tic Tac Toe

## Objective

In order to practice what we have learned regarding OOP and best practices, let's implement a Tic-Tac-Toe (Gato in Spanish) game!

## Rules
    • Two players represented with X and O.
    • First time the game is played, X startsEach player alternate turns to put a mark in the board on any available slot.
    • The game ends when either one of the players matches three marks in a horizontal, vertical or diagonal row or 
    there are no more moves available.
    • Once the game finishes, players are asked if they want to play again. If they do, the player who lost the previous 
    match starts. In case of a draw, the player who did the second-to-last movement starts.

## Considerations
    • Will the logic have to change if I want to play on a N x N board instead of the original 3 x 3?
    • Gem are supposed to be used by other programmers so they need to be well documented and tested.

## Game instructions 

The game start ask you for the board size, after that the game ask the cell position to the player in turn, and that step is repeat
until there is a winner or a draw. When any of these conditions are reached display a message and after that the game ask if they want
to play again, if the answer is yes the game start again, otherwise the game ends.

## Resources
- Install Ruby
    - rbenv
        - [Groom your app’s Ruby environment with rbenv](https://github.com/rbenv/rbenv)
        - [How to install ruby on rails with rbenv on ubuntu 16-04](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04)
        - [Install Ruby on Rays on Windows 10](https://gorails.com/setup/windows/10)
    - rvm
        - [rvm.io](https://rvm.io/)
 - [Ruby in 100 Minutes](http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html)
 - [MicroBlogger: Jumpstart Lab Curriculum](http://tutorials.jumpstartlab.com/projects/microblogger.html)
 - [ruby-build](https://github.com/rbenv/ruby-build#readme)
 - [RubyCritic](https://github.com/whitesmith/rubycritic)
 - [HackerRank Ruby](https://www.hackerrank.com/domains/ruby?filters%5Bsubdomains%5D%5B%5D=ruby-tutorials)
 - [Code Academy Learn Ruby](https://www.codecademy.com/learn/learn-ruby)
 - [Learn Ruby with Edgecase Ruby Koans](http://rubykoans.com/)
 - [Why's (Poignant) Guide to Ruby](https://poignant.guide/) 
