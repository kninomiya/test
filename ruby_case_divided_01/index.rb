#!/usr/local/bin/ruby
# frozen_string_literal: true

print 'Where are you from(Japan, USA, ..??): '
country = STDIN.gets.chomp.downcase
is_samurai = (country == 'japan' || country == 'nihon' ||
              country == 'jp' || country == 'jap' || country == 'ja' ||
              country == 'samurai')

if is_samurai == true
  puts 'Samurai!!'
else

  puts '侍はどこ!?'
end
