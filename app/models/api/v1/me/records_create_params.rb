# frozen_string_literal: true

module Api
  module V1
    module Me
      class RecordsCreateParams
        include ActiveParameter

        param :episode_id
        param :comment
        param :rating
        param :share_twitter, default: "false"
        param :share_facebook, default: "false"

        validates :episode_id,
          presence: true,
          numericality: {
            only_integer: true,
            greater_than_or_equal_to: 1
          }
        validates :share_twitter,
          allow_blank: true,
          filter_boolean_params: true
        validates :share_facebook,
          allow_blank: true,
          filter_boolean_params: true
      end
    end
  end
end
