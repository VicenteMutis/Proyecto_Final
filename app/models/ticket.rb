class Ticket < ApplicationRecord
  belongs_to :incident
  belongs_to :user_normal
  belongs_to :user_administrator
  belongs_to :user_supervisor
  belongs_to :user_executive

  enum status: { normal: 0, ejecutivo: 1, supervisor: 2, administrador: 3 }

end
