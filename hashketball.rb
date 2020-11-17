# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

  def num_points_scored(name)
    count = 0
    while game_hash[:home][:players].length > count
    if game_hash[:home][:players][count][:player_name] == name
        return game_hash[:home][:players][count][:points]
    elsif game_hash[:away][:players][count][:player_name] == name
        return game_hash[:away][:players][count][:points]
        end
    count += 1
    end
  end
  
  
  
    def shoe_size(name)
    count = 0
    while game_hash[:home][:players].length > count
    if game_hash[:home][:players][count][:player_name] == name
        return game_hash[:home][:players][count][:shoe]
    elsif game_hash[:away][:players][count][:player_name] == name
        return game_hash[:away][:players][count][:shoe]
        end
    count += 1
    end
  end
  
  
  
  
  
    def team_colors(name)
    
    if game_hash[:home][:team_name] == name
        return game_hash[:home][:colors]
    elsif game_hash[:away][:team_name] == name
        return game_hash[:away][:colors]
        end
    end
    
    def team_names
 return ["Brooklyn Nets", "Charlotte Hornets"]
end
  
  
  def player_numbers(team)
if team == "Brooklyn Nets"
    return [0, 1, 11, 30, 31]
elsif team == "Charlotte Hornets"
      return [0, 2, 4, 8, 33]
    end
    end
    
    
    
  def player_stats(name)
    count = 0
    while game_hash[:home][:players].length > count
    if game_hash[:home][:players][count][:player_name] == name
        return game_hash[:home][:players][count]
    elsif game_hash[:away][:players][count][:player_name] == name
        return game_hash[:away][:players][count]
        end
    count += 1
    end
  end
  
  
  def get_lagest_size
    lagest_size = 0
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if data.class == Array
        data.each do |data_item|
        if data_item.class == Hash
            data_item.each do |iner_key, iner_value|
                if iner_key == :shoe
                   if iner_value > lagest_size
                    lagest_size = iner_value 
                    end
                    end
                    end
                    end
                    end
                    end
                    end
    end
    return lagest_size
end
  
  
  
  
  
  
    def big_shoe_rebounds
    size = get_lagest_size
    count = 0
    while game_hash[:home][:players].length > count
    if game_hash[:home][:players][count][:shoe] == size
        return game_hash[:home][:players][count][:rebounds]
    elsif game_hash[:away][:players][count][:shoe] == size
        return game_hash[:away][:players][count][:rebounds]
        end
    count += 1
    end
  end

