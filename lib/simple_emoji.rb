require 'simple_emoji/version'
require 'json'
require 'action_view'

module SimpleEmoji
  class Index
    include ActionView::Helpers::TagHelper

    attr_reader :emoji_list

    def initialize(emoji_list = nil)
      emoji_list ||= begin
        emoji_json = File.read(emoji_list_file)
        JSON.parse(emoji_json)
      end

      @emoji_list = emoji_list

      emoji_list.each do |emoji_type, emoji_type_lists|
        emoji_type_lists.each do |key, value|
          self.class.send(:define_method, "#{key}") do
            content_tag(:span, value, { class: "emoji-#{key}" }, false)
          end
        end
      end
    end

    private

    def emoji_list_file
      File.dirname(__FILE__) + '/../config/emoji_list.json'
    end
  end
end
