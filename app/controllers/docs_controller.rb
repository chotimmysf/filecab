class DocsController < ApplicationController
 before_action :find_doc, only: [:show, :edit, :update, :destroy]
    def index
        @docs = Doc.all.order("created_at DESC")
    end

    def show
    end

    def new
        @doc = Doc.new
    end

    def create
        @doc = Doc.new(doc_params)

        if @doc.save
            redirect_to @doc
            #Refreshes the HTTPS file. Lose all content entered.
        else
            render 'new'
            #Second chance in saving content. Does not refresh.
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def find_doc
        @doc = Doc.find(params[:id])
    end

    def doc_params
        params.require(:doc).permit(:title, :content)
    end
end
