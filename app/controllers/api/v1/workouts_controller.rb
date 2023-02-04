class Api::V1::WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: workouts, status: 200
    end

    def show

    end

    def create
        workout = Workout.new(workout_params)
        if workout.save
            render json: workout, status: 200
        else
            render json: {error: "Error creating workout."}
        end
    end

    def update
    end

    def destroy
    end

    private

    def workout_params
        params.permit(:id, :date, :notes)
    end
end
