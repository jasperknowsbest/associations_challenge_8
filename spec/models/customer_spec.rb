require 'rails_helper'

RSpec.describe Customer, :type => :model do
  it { should have_many(:notes)}
  it { should have_many(:orders)}
  it { should validate_uniqueness_of(:email) }
end
