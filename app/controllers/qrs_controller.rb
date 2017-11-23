class QrsController < ApplicationController
  def new
    @client = current_client

    if @client.nil?
      puts '************client is empty!!**********************'
    end
  end

  def create
    tableText = Qrio::Qr.load(":root_path/assets/images/1.png").qr.text
    @table = Table.findById(tableText.to_i)
    redirect_to new_order_path
  end

end
