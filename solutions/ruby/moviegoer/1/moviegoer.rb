# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    price = @age >= 60 ? 10.00 : 15.00
  end

  def watch_scary_movie?
    can = @age >= 18 ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    popcorn = @member == true ? "🍿" : raise(NotMovieClubMemberError)
  end
end
