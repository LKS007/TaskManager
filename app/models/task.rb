class Task < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5}

  state_machine initial: :active do
    event :activate do
      transition inactive: :active
    end

    event :inactivate do
      transition active: :inactive
    end
  end
end
