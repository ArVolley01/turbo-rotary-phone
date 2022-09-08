class VendorsController < ApplicationController

    def index
        render json: Vendor.all
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
            veneets = []
            vendor.vendor_sweets.each do |veneet|
                veneets.push({id: veneet.id, name: veneet.sweet.name, price: veneet.price})
            end
            render json: {id: vendor.id, name: vendor.name, vendor_sweets: veneets}
        else
            render json: {error: "Vendor not found"}, status: 404
        end
    end

end
