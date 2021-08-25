class List < ApplicationRecord

    validates :name, presence: true

    before_create :active_check

    private
        
        def active_check
            if active.nil?
                self.active = true
            end
        end


end
