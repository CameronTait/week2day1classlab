class SportsTeam
  attr_accessor :name, :players, :coach, :points
  def initialize(name, players, coach, points = 0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(player_name)
    @players.push(player_name)
  end

  def check_player(player_name)
    return @players.find() do |player|
      player == player_name
    end
  end

  def point_update(game_result)
    @points += 3 if game_result == "Win"
    @points += 0 if game_result == "Lose"
  end
end
