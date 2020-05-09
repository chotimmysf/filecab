class DocsController < ApplicationController

    def index
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
    end

    def doc_params
        params.require(:doc).permit(:title, :content)
    end
end
