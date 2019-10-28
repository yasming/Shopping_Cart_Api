require 'rails_helper'

RSpec.describe Cart, type: :model do

  describe 'validations' do
    
    it { is_expected.to have_many(:cart_products) }
    it { is_expected.to belong_to(:user) }

  end

end