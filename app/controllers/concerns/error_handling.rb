module ErrorHandling
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :notfound

    private

    def notfound
      render json: {'error': 'not found'}, status: :not_found
    end
  end
end