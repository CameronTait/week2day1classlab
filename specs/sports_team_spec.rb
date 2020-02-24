require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test


  def test_get_sports_team_name
   sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
   assert_equal('CodeClan Cavaliers', sports_team.name)
  end

  def test_get_player_names
   sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
   assert_equal(["Chris", "Keith"], sports_team.players)
  end

  def test_set_coach
   sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
   sports_team.coach = "Bob"
   assert_equal("Bob", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
    sports_team.add_new_player("Ben")
    assert_equal("Ben", sports_team.players.last)
   end


   def test_check_player__true
     sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
     assert_equal("Chris", sports_team.check_player("Chris"))
    end


    def test_check_player__false
      sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
      assert_nil(sports_team.check_player("George"))
    end


    def test_point_update__win
      sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
      sports_team.point_update("Win")
      assert_equal(3, sports_team.points)
    end

    def test_point_update__win
      sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
      sports_team.point_update("Win")
      assert_equal(3, sports_team.points)
    end

    def test_point_update__lose
      sports_team = SportsTeam.new('CodeClan Cavaliers', ["Chris", "Keith"], "Juan", 0)
      sports_team.point_update("Lose")
      assert_equal(0, sports_team.points)
    end

end
