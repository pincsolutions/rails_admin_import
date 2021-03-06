require 'rails_admin_import/config'
require 'rails_admin_import/config/base'

module RailsAdminImport
  module Config
    class Model < RailsAdminImport::Config::Base
      def initialize(entity)
      end

      register_instance_option(:label) do
        :id
      end

      register_instance_option(:excluded_fields) do
        []
      end

      register_instance_option(:extra_fields) do
        []
      end

      register_instance_option(:import_only_if_all_records_valid) do
        false
      end

      register_instance_option(:belongs_fields_mapping) do
        {}
      end

      register_instance_option(:allow_update_existing_record) do
        true
      end
    end
  end
end
