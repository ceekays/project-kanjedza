pdf.indent 20 do #induce some left margin
  pdf.font "Times-Roman"
  pdf.font_size 10

  pdf.move_down 30
  pdf.text "Patients Admission Details", :size => 14, :align => :center
  pdf.move_down 10
  pdf.text "Below is a list of patients admitted so far."

  #create a two dimensional array for the table
  patients = @patients.map do |p|
    [ p.admission_number,
      p.first_name+ " "+ p.last_name,
      p.gender,
      p.ward,
      p.created_at.strftime("%d-%b-%Y")
      ]
  end

  pdf.move_down 15
  pdf.table patients,
    :headers => [ "Admission #", "Patient Name", "Gender", "Ward", "Date of Admission"],
    :border_style => :grid,
    :font_size => 10,
    :position => :center

  pdf.move_down 15
  pdf.text "Total number of patients admitted is #{patients.count}.",:style => :italic
end
