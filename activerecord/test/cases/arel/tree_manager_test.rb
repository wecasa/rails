# frozen_string_literal: true

require_relative "helper"

module Arel
  class TreeManagerTest < Arel::Spec
    describe "to_sql" do
      it "generates SQL" do
        users_table = Table.new(:users)
        tree_manager = Arel::TreeManager.new(users_table[:first_name])
        assert_equal('"users"."first_name"', tree_manager.to_sql)
      end
    end
  end
end
