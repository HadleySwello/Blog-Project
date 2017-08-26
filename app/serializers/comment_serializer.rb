# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :editable

  def editable
    scope == object.user
  end
end
