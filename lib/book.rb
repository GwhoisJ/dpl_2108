class Book
  attr_reader :title

  def initialize(info)
    @title              = info[:title]
    @author_first_name  = info[:author_first_name]
    @author_last_name   = info[:author_last_name]
    @publication_date   = info[:publication_date]
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    year = @publication_date.split(" ")
    year.last
  end
end