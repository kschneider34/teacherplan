require 'rails_helper'

RSpec.describe Plan, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:plan_owner) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
