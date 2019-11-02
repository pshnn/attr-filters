# frozen_string_literal: true

require "spec_helper"

RSpec.describe AttrFilters::Filters::Upcase do
  it "should upcase value" do
    filter = AttrFilters::Filters::Upcase.new

    expect(filter.call("Mike Dou")).to eq("MIKE DOU")
  end

  it "should do nothing if invalid value" do
    filter = AttrFilters::Filters::Upcase.new

    expect(filter.call(nil)).to eq(nil)
  end
end
