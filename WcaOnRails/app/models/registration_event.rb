class RegistrationEvent < ActiveRecord::Base
  belongs_to :registration

  validates :event_id, inclusion: { in: Event.all.map(&:id) }

  def event_object
    Event.find(event_id)
  end
end