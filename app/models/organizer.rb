class Organizer < ActiveRecord::Base
  before_save :build_cep

  def human_cep
    "#{cep[0..4]}-#{cep[5..-1]}"
  end

  private

  def build_cep
    self.cep = cep.gsub "-", ""
  end
end
