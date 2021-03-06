# == Schema Information
#
# Table name: people
#
#  id                         :integer          not null, primary key
#  pesel                      :string           not null
#  first_name                 :string           not null
#  last_name                  :string           not null
#  date_of_birth              :date             not null
#  email                      :string           not null
#  type                       :string           not null
#  salary                     :decimal(6, 2)
#  hiredate                   :date
#  encrypted_password         :string           default(""), not null
#  reset_password_token       :string
#  reset_password_sent_at     :datetime
#  remember_created_at        :datetime
#  sign_in_count              :integer          default(0), not null
#  current_sign_in_at         :datetime
#  last_sign_in_at            :datetime
#  current_sign_in_ip         :inet
#  last_sign_in_ip            :inet
#  profile_image_file_name    :string
#  profile_image_content_type :string
#  profile_image_file_size    :integer
#  profile_image_updated_at   :datetime
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def setup
    @person = Person.new(pesel: '98563201478', first_name: 'Roberto',
                         last_name: 'Mancini', date_of_birth: '1990-03-21',
                         email: 'lukas@example.com', type: 'Manager',
                         salary: '6500.00', hiredate: '2016-03-12',
                         password: 'qazwsx12')
  end

  test 'should be valid' do
    assert @person.valid?
  end
end
