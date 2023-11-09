# frozen_string_literal: true

module Types
  class StashType < Types::BaseObject
    field :id, ID, null: false
    field :strain_type, String
    field :strain, String
    field :user_id, Integer, null: false
    field :weight, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
