class ApplicationRecord < ActiveRecord::Base
  include MultiRender::ActsAsYaffle

  self.abstract_class = true
end
