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

# Unit tests for ESI::GetUniverseAsteroidBeltsAsteroidBeltIdNotFound
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseAsteroidBeltsAsteroidBeltIdNotFound' do
  before do
    # run before each test
    @instance = ESI::GetUniverseAsteroidBeltsAsteroidBeltIdNotFound.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseAsteroidBeltsAsteroidBeltIdNotFound' do
    it 'should create an instance of GetUniverseAsteroidBeltsAsteroidBeltIdNotFound' do
      expect(@instance).to be_instance_of(ESI::GetUniverseAsteroidBeltsAsteroidBeltIdNotFound)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
