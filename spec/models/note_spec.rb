require 'rails_helper'

RSpec.describe Note, :type => :model do
	it { should belong_to(:customer)}
  it { should belong_to(:order)}

  it "has a message column in database" do
	  @note = Note.create
	  @note.message = "Hey King & Partners, Hire Ed! He loves you!!"
	  @note.message.should eq "Hey King & Partners, Hire Ed! He loves you!!"
	end
end
