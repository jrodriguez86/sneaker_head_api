class ShoesController < ApplicationController
    
    def index
        shoes = Shoe.all
        render json: {status: 200, shoes: shoes}
      end

    def show
        shoe = Shoe.find(params[:id])
        render json: {status: 200, shoe: shoe}
      end

      def create
        shoe = Shoe.new(shoe_params)
    
        if shoe.save
          render(json: { shoe: shoe }, status: 201)
        else
          
          render(json: { shoe: shoe }, status: 422)
        end
      end

      def update
        shoe = Shoe.find(params[:id])
        shoe.update(shoe_params)
        render(json: { shoe: shoe })
      end

      def destroy
        shoe = Shoe.destroy(params[:id])
        render(status: 204)
      end

      private

  def shoe_params
    params.required(:shoe).permit(:image_url, :name, :brand, :year)
  end


end