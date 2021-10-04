module MultiRender
  module ActsAsYaffle
    extend ActiveSupport::Concern

    class_methods do
      def acts_as_yaffle(options={})
        cattr_accessor :yaffle_text_field, default: (options[:yaffle_text_field] || :last_squawk).to_s
      end
    end
  end
end
