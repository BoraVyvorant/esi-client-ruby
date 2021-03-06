=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for ESI::MailApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MailApi' do
  before do
    # run before each test
    @instance = ESI::MailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MailApi' do
    it 'should create an instance of MailApi' do
      expect(@instance).to be_instance_of(ESI::MailApi)
    end
  end

  # unit tests for delete_characters_character_id_mail_labels_label_id
  # Delete a mail label
  # Delete a mail label  --- 
  # @param character_id An EVE character ID
  # @param label_id An EVE label id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_characters_character_id_mail_labels_label_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_characters_character_id_mail_mail_id
  # Delete a mail
  # Delete a mail  --- 
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail
  # Return mail headers
  # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
  # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdMail200Ok>]
  describe 'get_characters_character_id_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_labels
  # Get mail labels and unread counts
  # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetCharactersCharacterIdMailLabelsOk]
  describe 'get_characters_character_id_mail_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_lists
  # Return mailing list subscriptions
  # Return all mailing lists that the character is subscribed to  ---  This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdMailLists200Ok>]
  describe 'get_characters_character_id_mail_lists test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_mail_id
  # Return a mail
  # Return the contents of an EVE mail  ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetCharactersCharacterIdMailMailIdOk]
  describe 'get_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_mail
  # Send a new mail
  # Create and send a new mail  --- 
  # @param character_id An EVE character ID
  # @param mail The mail to send
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Integer]
  describe 'post_characters_character_id_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_mail_labels
  # Create a mail label
  # Create a mail label  --- 
  # @param character_id An EVE character ID
  # @param label Label to create
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Integer]
  describe 'post_characters_character_id_mail_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_characters_character_id_mail_mail_id
  # Update metadata about a mail
  # Update metadata about a mail  --- 
  # @param character_id An EVE character ID
  # @param contents Data used to update the mail
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
