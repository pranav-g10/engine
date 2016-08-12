class InvoicePdf < Prawn::Document
  def initialize(invoice, user)
    super()
    @invoice = invoice
    @user = user
    pre_header
    move_down 20
    stroke_horizontal_line(0, bounds.width)
    header
    text_content
    stroke_horizontal_line(0, bounds.width)
    table_content
    # footer

  end

  def pre_header
    filename = "#{Rails.root}/app/assets/images/appstreet.jpg"
    y_position = cursor - 10
    bounding_box([0, y_position], :width => 10) do
      image filename
    end
    bounding_box([70,y_position], :width => 270) do
      text "\#Invoice No #{@invoice.invoice_no}"
      text "Payment Date #{@invoice.addedon.to_date}"
      text "Today Date #{Date.today}"
    end
  end

  def header
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 10

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 100) do
      text "App Street Software Pvt. Ltd.", size: 12, style: :bold

      text "470, Tower B"
      text "Spaze iTech Park"
      text "Sector – 49, Sohna Road"
      text "Gurgaon – 122002 (HAR)"
      text "INDIA"
    end

  end

  def text_content
    bounding_box([0, cursor], :width => 270, :height => 50) do
      text "Bill To:", size: 12, style: :bold

      text "#{@user.name.titleize}"
      text "#{@user.email}"
    end
  end

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    move_down 20
    text "Payment Detail:", size: 12, style: :bold
    y_position = cursor - 10
    bounding_box([0, y_position], :width => 300, :height => 500) do
      table product_rows do
        # row(0).font_style = :bold
        # self.header = true
        self.row_colors = ['DDDDDD', 'FFFFFF']
        # self.column_widths = [120, 120]
      end
    end

    bounding_box([300, y_position], :width => 200, :height => 500) do
      table total_rows do
        # row(0).font_style = :bold
        self.header = true
        self.row_colors = ['DDDDDD', 'FFFFFF']
        # self.column_widths = [120]
        self.position = :right
      end
    end
  end

  def product_rows
    columns = ["mode", "status", "unmappedstatus", "cardCategory", "addedon",
               "productinfo", "bank_ref_num", "name_on_card", "cardnum", "issuing_bank",
               "card_type", "controller"]
    columns.map do |c|
      [c, "#{@invoice.send(c)}"]
    end
  end

  def total_rows
    [['Price', "#{@invoice.amount}"]] +
    [['Tax', "#{ENV['TAX']}%"]] +
    [['Total Payment', "#{@invoice.amount}"]]
  end

  def footer

    # bounding_box([0, 100], :width => 270, :height => 50) do
    #   stroke_horizontal_line(0, bounds.width)
    #   text "signature", align: :center
    # end
    #
    # bounding_box([300, 100], :width => 270, :height => 50) do
    #   text "#{Date.today}", align: :center
    #   stroke_horizontal_line(0, bounds.width)
    #   text "Date", align: :center
    # end
    # text "Thank You for Your Business", align: :center
    # text "#{Date.today}", align: :center

  end
end