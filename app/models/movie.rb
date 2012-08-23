class Movie < ActiveRecord::Base
  class Movie::MissingDirectorError < StandardError; end

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_by_director(string)
       raise Movie::MissingDirectorError.new unless string != nil && string.strip != ''
       @result = self.where(:director => string)
  end
end
