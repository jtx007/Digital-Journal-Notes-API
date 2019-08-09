module Api
    module V1
        class EntriesController < ApplicationController

            def index
                entries = Entries.all
                render json: entires
            end

            def create
                entry = Entry.new(entry_params)
                if entry.save
                    render json: entry, status: :created
                else
                    render json: entry, status: :unprocessable_entity 
                end
            end


            private
            def entry_params
                params.require(:entry).permit(:title, :body, :user_id)
            end
        end
    end
end
