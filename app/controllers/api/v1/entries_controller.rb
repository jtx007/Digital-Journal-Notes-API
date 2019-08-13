module Api
    module V1
        class EntriesController < ApplicationController
                before_action :authorize_request, except: :index
            def index
                render json: Entry.all

            end

            def create
                entry = Entry.new(entry_params)
                
                if entry.save
                    render json: entry, status: :created
                else
                    render json: entry, status: :unprocessable_entity 
                end
            end

            def show
                entry = Entry.find(params[:id])
                render json: entry
            end

            def update
                entry = Entry.find(params[:id])
                entry.update(entry_params)
                entry.save
                render json: entry, status: :accepted
            end

            def destroy
                entry = Entry.find(params[:id])
                entry.destroy
                render json: {message: "Entry Deleted"}, status: :ok
            end

    


            private
            def entry_params
                params.require(:entry).permit(:title, :body, :user_id)
            end
        end
    end
end
