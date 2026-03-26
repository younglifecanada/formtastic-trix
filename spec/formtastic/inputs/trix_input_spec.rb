require 'spec_helper'

RSpec.describe TrixInput do
  let(:lookup_context) { ActionView::LookupContext.new([]) }
  let(:template) { ActionView::Base.new(lookup_context, {}, nil) }

  let(:model_class) do
    Class.new do
      def self.name
        'Post'
      end

      def self.validators_on(*)
        []
      end

      def self.human_attribute_name(attr, **)
        attr.to_s.humanize
      end

      def self.reflect_on_association(*)
        nil
      end

      def self.content_columns
        []
      end

      def self.columns_hash
        {}
      end

      attr_accessor :bio

      def initialize(bio: nil)
        @bio = bio
      end
    end
  end

  let(:object) { model_class.new(bio: '<p>Hello</p>') }
  let(:builder) { Formtastic::FormBuilder.new(:post, object, template, {}) }
  let(:output) { builder.input(:bio, as: :trix) }

  describe '#to_html' do
    it 'renders a trix-editor element' do
      expect(output).to include('<trix-editor')
    end

    it 'applies the trix-content class to the editor' do
      expect(output).to include('class="trix-content"')
    end

    it 'renders a hidden input for the field value' do
      expect(output).to include('type="hidden"')
      expect(output).to include('name="post[bio]"')
    end

    it 'wraps the editor in a trix-editor-wrapper div' do
      expect(output).to include('class="trix-editor-wrapper"')
    end

    it 'links the editor to the hidden input via the input attribute' do
      expect(output).to include('input="post_bio"')
    end

    it 'renders a label' do
      expect(output).to include('<label')
      expect(output).to include('Bio')
    end

    it 'sets the hidden field value from the object attribute' do
      expect(output).to include('value="&lt;p&gt;Hello&lt;/p&gt;"')
    end
  end
end
