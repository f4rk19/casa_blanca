class CasaFacility < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :casa
  belongs_to :facility
end
