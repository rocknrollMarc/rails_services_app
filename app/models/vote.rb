class Vote < ActiveRecord::Base
  belongs_to :user
end

class UpVote < Vote
  belongs_to :entry, :counter_cache => true

  after_create {|record| VateActivity.write(record)}
end

class DownVote < Vote
  belongs_to :entry, :counter_cache  => true
end
