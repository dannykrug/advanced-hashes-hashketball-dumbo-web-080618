require "pry"

def game_hash

  teams = {

  home: {

    team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: {

      "Alan Anderson" => {
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1
      },

      "Reggie Evans" => {
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7
      },

      "Brook Lopez" => {
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15
      },

      "Mason Plumlee" => {
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5
      },

      "Jason Terry" => {
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1
      }

    } # end of home team players

  }, # end of home





  away: {

    team_name: "Charlotte Hornets",

    colors: ["Turquoise", "Purple"],

    players: {

      "Jeff Adrien" => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
      },

      "Bismak Biyombo" => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
      },

      "DeSagna Diop" => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
      },

      "Ben Gordon" => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
      },

      "Brendan Haywood" => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
      }

    } # end of away team players
  } # end of away


} # End of Main Hash

end

def num_points_scored(name)
  game_hash.each do |location, team|
    team[:players].each do |player, stats|
      if player == name
        return stats[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, team|
    team[:players].each do |player, stats|
      if player == name
        return stats[:shoe]
      end
    end
  end
end

def team_colors(name_of_team)
  game_hash.each do |location, team_info|
    team = team_info[:team_name]
    if team == name_of_team
      return team_info[:colors]
    end
  end
end

def team_names
  game_hash.values.collect do |name|
    name.fetch(:team_name)
  end
end

def player_numbers(name_of_team)
  numbers = []

  game_hash.each do |location, team_info|
    if team_info[:team_name] == name_of_team
      team_info[:players].each do |player, stats|
        numbers << stats[:number]
      end
    end
  end
  numbers
end

def player_stats(player_name)
  game_hash.each do |location, team_info|
    team_info[:players].each do |name, stats|
      if name == player_name
        return stats
      end
    end
  end
end

def largest_shoe
  game_hash[:home][:players].max_by { |name, stats| stats[:shoe] }.last[:shoe]
end

def big_shoe_rebounds
  game_hash.each do |location, team_info|
    team_info[:players].each do |name, stats|
      if stats[:shoe] == largest_shoe
        return stats[:rebounds]
      end
    end
  end
end
