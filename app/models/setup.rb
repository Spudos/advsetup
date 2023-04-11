class Setup < ApplicationRecord
   validates :car, presence: true, length: { minimum: 4, Maximum: 20}
   validates :driver, presence: true, length: { minimum: 4, Maximum: 25}
   validates :track, presence: true, length: { minimum: 3, Maximum: 25}
   validates :frshk, presence: true
end