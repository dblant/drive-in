class CustomersController < ApplicationController
    def index
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        redirect_to customer_path(@customer)
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
        redirect_to index
    end

    private
    def customer_params
        params.require(:customer).permit(:name, :username, :car_make, :car_model, :car_year)
    end
end
