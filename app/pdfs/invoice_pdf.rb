class InvoicePdf < Prawn::Document
  def initialize(invoice)
    super()
    @invoice = invoice
    header
    text_content
    table_content
    footer
  end

  def header
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 10

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
      text "App Street Software Pvt. Ltd.", size: 15, style: :bold

      text "470, Tower B"
      text "Spaze iTech Park"
      text "Sector – 49, Sohna Road"
      text "Gurgaon – 122002 (HAR)"
      text "INDIA"
    end

    bounding_box([300, y_position], :width => 270, :height => 100) do
      text "INVOICE", size: 15, style: :bold
        bounding_box([0, 50], :width => 100, :height => 100) do

          text "Invoice no."
          text "Invoice Date"
        end
        bounding_box([70,50], :width => 100, :height => 100) do

          text "#{@invoice.txnid}"
          text "#{@invoice.addedon}"
        end
    end
    #This inserts an image in the pdf file and sets the size of the image
  end

  def text_content
    bounding_box([0, cursor], :width => 270, :height => 100) do
      text "Bill to:", size: 12, style: :bold

      text "name"
      text "company name"
      text "street address"
      text "Phone no."
      text "INDIA"
    end
  end

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    table product_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [300, 120, 120]
    end

    table total_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [150]
      self.position = :right
    end
  end

  def product_rows
    [['Description', 'status', 'Amount']] +
          [[@invoice.productinfo, @invoice.status, @invoice.account_package.package.price]]
  end

  def total_rows
    [['Subtotal   345']] +
        [['Tax    34']]+
      [['Total Due'   '379']]
  end

  def footer
    bounding_box([0, 100], :width => 270, :height => 50) do
      stroke_horizontal_line(0, bounds.width)
      text "signature", align: :center
      # formatted_text_box([{ :text => "ffh",
      #                       :size => 12,
      #                       :styles => [:underline] }])
      # formatted_text_box([{ :text => "ffvfvfvfh",
      #                       :size => 12
      #                       }])
    end

    bounding_box([300, 100], :width => 270, :height => 50) do
      # formatted_text_box([{ :text => "shubham",
      #                       :size => 12,
      #                       :styles => [:underline] }])
      # formatted_text_box([{ :text => "ffbbbbbbh",
      #                       :size => 12}])
      stroke_horizontal_line(0, bounds.width)
      text "Date", align: :center
    end

    text "Thank You for Your Business", align: :center
  end
end