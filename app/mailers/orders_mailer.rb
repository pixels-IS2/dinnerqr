class OrdersMailer < ApplicationMailer
	def new_order(order, client)
		@order = order
		@client = client
		@orderdishes = @order.orderdishes.joins(:dish).select("orderdishes.*, orderdishes.state as orderstate, dishes.*")

		pdf = ExportPdf.new(order.id,@orderdishes,order.table,order)
		attachments["order_#{@order.id}.pdf"] = pdf.render
		mail to: client.email, subject: "Bill for #{client.name}"
	end
end
