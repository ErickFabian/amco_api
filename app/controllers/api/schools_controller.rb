module Api
  class SchoolsController < BaseController
    before_action :set_school, only: [:show]

    def index
      schools = School.ransack(query_params).result
      render json: SchoolSerializer.new(schools).serialized_json
    end

    def show
      render json: SchoolSerializer.new(@school).serialized_json
    end

    private

    def set_school
      @school = School.find(params[:id])
    end

    def query_params
      params[:q]
    end
  end
end
