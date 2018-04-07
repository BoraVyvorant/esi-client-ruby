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

# Unit tests for ESI::GetCorporationsCorporationIdOutpostsOutpostIdService
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCorporationsCorporationIdOutpostsOutpostIdService' do
  before do
    # run before each test
    @instance = ESI::GetCorporationsCorporationIdOutpostsOutpostIdService.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCorporationsCorporationIdOutpostsOutpostIdService' do
    it 'should create an instance of GetCorporationsCorporationIdOutpostsOutpostIdService' do
      expect(@instance).to be_instance_of(ESI::GetCorporationsCorporationIdOutpostsOutpostIdService)
    end
  end
  describe 'test attribute "service_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Bounty Missions", "Assassination Missions", "Courier Missions", "Interbus", "Reprocessing Plant", "Refinery", "Market", "Black Market", "Stock Exchange", "Cloning", "Surgery", "DNA Therapy", "Repair Facilities", "Factory", "Laboratory", "Gambling", "Fitting", "Paintshop", "News", "Storage", "Insurance", "Docking", "Office Rental", "Jump Clone Facility", "Loyalty Point Store", "Navy Offices", "Security Office"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.service_name = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "minimum_standing"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "surcharge_per_bad_standing"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "discount_per_good_standing"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
