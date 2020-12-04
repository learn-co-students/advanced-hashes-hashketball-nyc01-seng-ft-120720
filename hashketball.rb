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
  count1 = 0
  while count < game_hash[:home][:players].length do
    if name == game_hash[:home][:players][count][:player_name]
      return game_hash[:home][:players][count][:points]
    end
    count = count + 1
  end
  while count1 < game_hash[:away][:players].length do
    if name == game_hash[:away][:players][count1][:player_name]
      return game_hash[:away][:players][count1][:points]
    end
    count1 = count1 + 1
  end
end

def shoe_size(name)
  count = 0
  count1 = 0
  while count < game_hash[:home][:players].length do
    if name == game_hash[:home][:players][count][:player_name]
      return game_hash[:home][:players][count][:shoe]
    end
    count = count + 1
  end
  while count1 < game_hash[:away][:players].length do
    if name == game_hash[:away][:players][count1][:player_name]
      return game_hash[:away][:players][count1][:shoe]
    end
    count1 = count1 + 1
  end
end


def team_colors(name)
  if name == game_hash[:home][:team_name]
    return game_hash[:home][:colors]
  end
  if name == game_hash[:away][:team_name]
    return game_hash[:away][:colors]
  end
end

def team_names
  array = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(name)
  count = 0
  count1 = 0
  array = []
  if name == game_hash[:home][:team_name]
    while count < game_hash[:home][:players].length do
      array << game_hash[:home][:players][count][:number]
      count = count + 1
    end
  end
  if name == game_hash[:away][:team_name]
    while count1 < game_hash[:away][:players].length do
      array << game_hash[:away][:players][count1][:number]
      count1 = count1 + 1
    end
  end
  array
end

def player_stats(name)
  count = 0
  count1 = 0
    while count < game_hash[:home][:players].length do
    if name == game_hash[:home][:players][count][:player_name]
      return game_hash[:home][:players][count]
    end
    count = count + 1
  end
  while count1 < game_hash[:away][:players].length do
    if name == game_hash[:away][:players][count1][:player_name]
      return game_hash[:away][:players][count1]
    end
    count1 = count1 + 1
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  count = 0
  count1 = 0
    while count < game_hash[:home][:players].length do
      if game_hash[:home][:players][count][:shoe] > biggest_shoe
        biggest_shoe = game_hash[:home][:players][count][:shoe]
        rebounds = game_hash[:home][:players][count][:rebounds]
      end
    count = count + 1
  end

  while count1 < game_hash[:away][:players].length do
      if game_hash[:away][:players][count1][:shoe] > biggest_shoe
        biggest_shoe = game_hash[:away][:players][count1][:shoe]
        rebounds = game_hash[:away][:players][count1][:rebounds]
      end
    count1 = count1 + 1
  end
  rebounds
end
