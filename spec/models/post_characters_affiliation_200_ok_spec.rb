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

# Unit tests for ESI::PostCharactersAffiliation200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostCharactersAffiliation200Ok' do
  before do
    # run before each test
    @instance = ESI::PostCharactersAffiliation200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostCharactersAffiliation200Ok' do
    it 'should create an instance of PostCharactersAffiliation200Ok' do
      expect(@instance).to be_instance_of(ESI::PostCharactersAffiliation200Ok)
    end
  end
  describe 'test attribute "character_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "corporation_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "alliance_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "faction_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
