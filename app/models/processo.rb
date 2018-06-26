class Processo < ApplicationRecord
    validates :data, :numero, :solicitante, :data_receb, presence: true
end
