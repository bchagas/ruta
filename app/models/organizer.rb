class Organizer < ActiveRecord::Base

  validates_length_of :cep, :is => 8
  before_save :build_cep

  def human_cep
    "#{cep[0..4]}-#{cep[5..-1]}"
  end

  private

  def build_cep
    cep.gsub("-", "")
  end
end
