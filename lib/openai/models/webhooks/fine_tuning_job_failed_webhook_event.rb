# frozen_string_literal: true

module OpenAI
  module Models
    module Webhooks
      class FineTuningJobFailedWebhookEvent < OpenAI::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The Unix timestamp (in seconds) of when the fine-tuning job failed.
        #
        #   @return [Integer]
        required :created_at, Integer

        # @!attribute data
        #   Event data payload.
        #
        #   @return [OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent::Data]
        required :data, -> { OpenAI::Webhooks::FineTuningJobFailedWebhookEvent::Data }

        # @!attribute type
        #   The type of the event. Always `fine_tuning.job.failed`.
        #
        #   @return [Symbol, :"fine_tuning.job.failed"]
        required :type, const: :"fine_tuning.job.failed"

        # @!attribute object
        #   The object of the event. Always `event`.
        #
        #   @return [Symbol, OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent::Object, nil]
        optional :object, enum: -> { OpenAI::Webhooks::FineTuningJobFailedWebhookEvent::Object }

        # @!method initialize(id:, created_at:, data:, object: nil, type: :"fine_tuning.job.failed")
        #   Some parameter documentations has been truncated, see
        #   {OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent} for more details.
        #
        #   Sent when a fine-tuning job has failed.
        #
        #   @param id [String] The unique ID of the event.
        #
        #   @param created_at [Integer] The Unix timestamp (in seconds) of when the fine-tuning job failed.
        #
        #   @param data [OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent::Data] Event data payload.
        #
        #   @param object [Symbol, OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent::Object] The object of the event. Always `event`.
        #
        #   @param type [Symbol, :"fine_tuning.job.failed"] The type of the event. Always `fine_tuning.job.failed`.

        # @see OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent#data
        class Data < OpenAI::Internal::Type::BaseModel
          # @!attribute id
          #   The unique ID of the fine-tuning job.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent::Data} for more
          #   details.
          #
          #   Event data payload.
          #
          #   @param id [String] The unique ID of the fine-tuning job.
        end

        # The object of the event. Always `event`.
        #
        # @see OpenAI::Models::Webhooks::FineTuningJobFailedWebhookEvent#object
        module Object
          extend OpenAI::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
