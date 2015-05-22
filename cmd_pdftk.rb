# Splits PDFs into seperate pages
# ---------------------------------------------------------------------------------
class PdfSplitter
  def split(file, pages)
    `pdftk #{file} cat #{pages} output pages#{pages}.pdf`
  end
end

# The below is a test
# ---------------------------------------------------------------------------------
splitter = PdfSplitter.new.split('./multi_pdf.pdf', 3)
