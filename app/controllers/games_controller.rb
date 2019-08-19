# frozen_string_literal: true

# Description/Explanation of Games class
class GamesController < ApplicationController
  def new
    # @resposne = []
    @letters = (0...10).map { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    @rand = params[:letters].gsub(/\W/, '').strip
    @count = 0
    @word = params[:word].upcase.split('')
    @word.each_with_index do |letter, ind|
      if @rand.include? letter
        @rand.split('').delete_at(ind)
        @count += 1
      end
    end
    raise
  end
end
