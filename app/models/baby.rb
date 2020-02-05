class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy
    def total_volumen
        breastfeedings.sum(:volumen)
    end

    def total_time
        breastfeedings.sum(:time_eat)
    end
end
