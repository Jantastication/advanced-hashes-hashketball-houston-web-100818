require "pry"
# Write your code here!
def game_hash
  {
     :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => [{
    "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
    "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
    "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
    "Maison Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
    "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
     }]
   },
     :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise", "Purple"],
       :players => [ {
    "Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
    "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
    "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
    "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
    "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
     } ]
   }
 }
end

def num_points_scored(name)
  points = nil
   game_hash.each do |team, attributes|
   game_hash[team][:players].each do |key, value|
    if name == key
      points = game_hash[:team][:players][:name][:points]
    end
  end
end
points
end



def shoe_size(name)
    shoe = nil

    game_hash.each do |team, attributes|
      game_hash[team][:players].each do |key, value|
        if name == key
          shoe = game_hash[team][:players][name][:shoe]
        end
      end
    end
    shoe
end



def team_colors(team_name)
   if team_name == "Charlotte Hornets"
     game_hash[:away][:colors]
   elsif team_name == "Brooklyn Nets"
     game_hash[:home][:colors]
   else
   end
end


def team_names
      new_array = []
       game_hash.each do |location, team_data|
         team_data.each do |attribute, values|
          if attribute == :team_name
             new_array<<(values)
          end
         end
       end
         new_array
end


def player_numbers(team_name)
  number_array = []
     game_hash.each do |location, team_data|
      if team_data[:name] == team_name
        team_data[:players].each do |player|
          player.each do |key, value|
            if key == :number
         number_array << value
         end
        end
       end
     end
   end
       number_array
end


def player_stats(player_name)
  player_stats = {}
       game_hash.each do |location, team_data|
         team_data.each do |attribute, values|
           if attribute == :players
             values.each do |person, stats|
               if person == player_name
                  player_stats << (stats)
               end
             end
           end
         end
       end
        player_stats
end

def big_shoe_rebounds
     big_shoes_player = 0
     rebounds = 0
     game_hash.each do | location, team_data|
     team_data[:players].each do |stats|
       if stats[:shoe] > big_shoes_player
         big_shoes_player = stats[:shoe]
          rebounds = stats[:rebounds]
       end
     end
   end
  rebounds
end

def total_points_scored(team_name)
    players = player_names(team_name)
    total_points = 0
    name = ""
     players.each do |player|
        total_points = total_points + num_points_scored(player)
    end
    return total_points
end
