require_dependency "admin/application_controller"

module Admin
  class MatchesController < ApplicationController
    include Godmin::Resources::ResourceController

    private

    def resource_params
      params.require(:match).permit(:established_id, :newcomer_id, :comment)
    end
  end
end
