class User < ActiveRecord::Base

  attr_accessible :dads_pesel, :mums_pesel

  # this will give the access to methods:
  # dads_pesel_personal_data, mums_pesel_personal_data
  pesel_attr :dads_pesel, :mums_pesel

  # keep in mind that pesel validator is not performing a presence test
  # so you need another (standard) validation for this one
  validates :dads_pesel, :presence => true
  validates :dads_pesel, :pesel    => true
  validates :mums_pesel, :pesel    => true
  # pesel validator returns standard rails :invalid key error message

end

date_of_birth:Date
sex:Integer

class User < ActiveRecord::Base

  attr_accessible :pesel
  pesel_attr :pesel

  validates :pesel, :pesel => true

  before_save :set_personal_data

  private

  def set_personal_data
    self.date_of_birth = pesel_personal_data.date_of_birth
    self.sex           = pesel_personal_data.sex
  end

end
