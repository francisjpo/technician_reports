pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Listado de operarios", :size => 20, :style => :bold

pdf.move_down (25)

items = []

@operarios.each do |operario|
	items = items + [[ operario.nombre + ' ' + operario.apellidos,
					operario.usuario, operario.telefono, operario.email ]]
end

pdf.table items, :border_style => :grid,  
  :row_colors => ["FFFFFF", "DDDDDD"],  
  :headers => ["Nombre", "Usuario", "Teléfono", "Email"],  
  :align => { 0 => :center, 1 => :center, 2 => :center, 3 => :center}