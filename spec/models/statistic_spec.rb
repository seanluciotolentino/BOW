require 'rails_helper'

RSpec.describe Statistic, type: :model do
  FactoryGirl.create_list(:article, 4)

  describe total_cases do
  	stats = Statistics.new
		expect(stats.total_cases).to eq(4)
  end
end
