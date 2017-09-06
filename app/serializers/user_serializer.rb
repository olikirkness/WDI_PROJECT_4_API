class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :first_name, :last_name, :image, :email, :created_leagues, :ranking, :matches, :sent_challenges, :recieved_challenges, :ave_ranking, :current_ranking, :matches_won, :created_at

  has_many :leagues

  has_many :matches

  has_many :recieved_requests

  has_many :sent_requests

  has_many :recieved_challenges

  has_many :sent_challenges


  def ave_ranking
    # puts object.ranking.reduce(:+) / object.ranking.size.to_f, 'AVEEEEEEEEE'
    # object.ranking.reduce(:+) / object.ranking.size.to_f
    i = 0
    total = 0
    if object.ranking != nil
      while i < object.ranking.length
        total = total + object.ranking[i]
        i = i + 1

      end
      total/object.ranking.length
    end
  end

  def current_ranking

    if object.ranking != nil
      object.ranking.first
    end


  end

  def win_ratio



  end
end
