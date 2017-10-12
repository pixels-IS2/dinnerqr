class ExportPdf  
  # `include` instead of subclassing Prawn::Document
  # as advised by the official manual
  include Prawn::View

  def initialize(param,orderdishes,table, order)
    super()
    @param= param
    @table=table
    @orderdishes=orderdishes
    @order=order
    head
    line_items
    total_price
  end

  def head
    draw_text "restaurante el pajarito", :at =>[185,700], size:14 , style: :bold
    draw_text "nit 123456", :at =>[225,680], size:14
    draw_text "factura  #{@param}", :at=> [230,668], size:14
    move_down 55
    stroke_horizontal_rule
    draw_text "atendido por #{@table.waiter.email}", :at =>[240,640]
    draw_text "table \##{@table.number}",:at =>[20,640] ,size: 14, style: :bold
        
  end

  def line_items
    move_down 50
    table line_item_rows do
      cells.borders = []
      row(0).font_style = :bold
      row(0).borders = [:bottom]
      row(0).border_width = 2
      row(0).font_style = :bold
      columns(0..1).borders = [:right]
      row(0).columns(0..1).borders = [:bottom, :right]

      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths=[200,150,170]

    end
  end

  def line_item_rows
    [["Producto","Cant.","Precio individual"]]+ 
    @orderdishes.map do |dish|
      [dish.name,dish.quantity,dish.price]
    end
  end

  def total_price
    move_down 10
    stroke_horizontal_rule
    pad(25) { text "Valor total: #{@order.price}" ,style: :bold, size:19} 
  end

end  