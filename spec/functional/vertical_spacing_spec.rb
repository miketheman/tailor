require_relative '../spec_helper'
require_relative '../support/vertical_spacing_cases'
require 'tailor/critic'
require 'tailor/configuration/style'


describe "Vertical Space problem detection" do
  before do
    Tailor::Logger.stub(:log)
    FakeFS.activate!
  end

  let(:critic) do
    Tailor::Critic.new
  end

  let(:style) do
    style = Tailor::Configuration::Style.new
    style.trailing_newlines 0, level: :off
    style.allow_invalid_ruby true, level: :off

    style
  end

  V_SPACING_OK.each do |file_name, contents|
    before do
      FileUtils.touch file_name
      File.open(file_name, 'w') { |f| f.write contents }
    end

    it "should be OK" do
      critic.check_file(file_name, style.to_hash)
      critic.problems.should == { file_name =>  [] }
    end
  end
end
