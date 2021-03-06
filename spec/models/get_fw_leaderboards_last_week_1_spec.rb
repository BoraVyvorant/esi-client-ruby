=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ESI::GetFwLeaderboardsLastWeek1
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsLastWeek1' do
  before do
    # run before each test
    @instance = ESI::GetFwLeaderboardsLastWeek1.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsLastWeek1' do
    it 'should create an instance of GetFwLeaderboardsLastWeek1' do
      expect(@instance).to be_instance_of(ESI::GetFwLeaderboardsLastWeek1)
    end
  end
  describe 'test attribute "faction_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

