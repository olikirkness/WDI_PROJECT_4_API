class LeagueSerializer < ActiveModel::Serializer
  has_many :users

  attributes :id, :title, :image, :users, :created_by, :league_ave_ranking, :matches, :matches_played, :club
  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_many :matches

  def league_ave_ranking
    i = 0
    total = 0
    count = 0
    if object.users[i] != nil
      while i < object.users.length
        a = 0
        if object.users[i].ranking != nil

          while a < object.users[i].ranking.length
            total = total + object.users[i].ranking[a]
            a = a + 1
            count = count + 1
          end

        end
        i = i + 1
      end
      total / count
    end

  end

  def matches_played
    i = 0
    total_num_matches = 0
    if object.matches
      while i < object.matches.length
        if object.matches[i].played
          total_num_matches = total_num_matches + 1
        end
        i = i + 1
      end
    end
    total_num_matches

  end

end
