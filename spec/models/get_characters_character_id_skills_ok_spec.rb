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

# Unit tests for ESI::GetCharactersCharacterIdSkillsOk
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdSkillsOk' do
  before do
    # run before each test
    @instance = ESI::GetCharactersCharacterIdSkillsOk.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdSkillsOk' do
    it 'should create an instance of GetCharactersCharacterIdSkillsOk' do
      expect(@instance).to be_instance_of(ESI::GetCharactersCharacterIdSkillsOk)
    end
  end
  describe 'test attribute "skills"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_sp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unallocated_sp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

