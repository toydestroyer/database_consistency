# frozen_string_literal: true

module DatabaseConsistency
  module Writers
    module Simple
      class AssociationForeignTypeMissingNullConstraint < Base # :nodoc:
        private

        def template
          'association foreign type column should be required in the database'
        end

        def unique_attributes
          {
            table_name: report.table_name,
            column_name: report.column_name
          }
        end
      end
    end
  end
end
