class ImproveMeetupDateTimes < ActiveRecord::Migration
  def change
    change_table :meetup_events do |t|
      t.remove :time
      t.datetime :starts_at
      t.rename :duration, :duration_in_minutes
    end
  end
end
