class User < ApplicationRecord
    enum role: { normal: 0, ejecutivo: 1, supervisor: 2, administrador: 3 }
end
