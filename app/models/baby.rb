class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy
    def total_volumen
        breastfeedings.sum(:volumen)
    end

    def total_time
        breastfeedings.sum(:time_eat)
    end

    def food_count
        breastfeedings.count(:id)
    end

    def feeding_times_today
        feed_today.count
    end

    def volumen_today
        feed_today.sum(:volumen)
    end

    def last_time
        breastfeedings.last.created_at
    end

    private
      def feed_today
        breastfeedings.where('created_at > ?', Date.today)
      end
    end