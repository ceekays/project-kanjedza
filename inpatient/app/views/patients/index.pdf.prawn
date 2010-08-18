pdf.indent 20 do #induce some left margin
  pdf.font "Times-Roman"
  pdf.font_size 10

  pdf.move_down 30
  pdf.text "Patients Admission Details", :size => 14, :align => :center
  pdf.move_down 10
  pdf.text "Below is a list of patients admitted so far."
end