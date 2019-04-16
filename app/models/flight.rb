class Flight < ApplicationRecord
  scope :active, -> { where(status: 'Active')}
  scope :by_dest_origin, -> (from, to ) { where(origin: from, destination: to) }
  scope :by_departure_date, -> (dept_date) { where(departure_time: dept_date.beginning_of_day..dept_date.end_of_day)}

  has_many :bookings
  has_many :users, through: :bookings

  enum status: %w( Active Cancelled Delayed )

  def self.search search
    if search.present?
      active.by_dest_origin(search[:origin], search[:destination]).by_departure_date(Date.strptime(search[:dep_date], '%m/%d/%Y'))
    else
      active
    end
  end
end
