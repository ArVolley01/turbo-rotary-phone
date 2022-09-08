class VendorSweetsController < ApplicationController

    def create
        veneet = VendorSweet.new(
            price: params[:price],
            vendor_id: params[:vendor_id],
            sweet_id: params[:sweet_id]
        )
        if veneet.save
            render json: {id: veneet.id, name: veneet.sweet.name, price: veneet.price}, status: 201
        else
            render json: {"errors": ["validation errors"]}, status: 422
        end
    end

    def destroy
        veneet = VendorSweet.find_by(id: params[:id])
        if veneet
            veneet.destroy
            render json: {}
        else
            render json: {error: "VendorSweet not found"}, status: 404
        end
    end

end
