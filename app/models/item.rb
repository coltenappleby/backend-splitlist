class Item < ApplicationRecord
  
  belongs_to :user
  belongs_to :list


  before_create :completed_check

  private
      
      def completed_check
          if completed.nil?
              self.completed = false
          end
      end

end
