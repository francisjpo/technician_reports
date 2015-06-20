pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Listado de partes", :size => 20, :style => :bold

pdf.move_down (25)

items = []

@partes.each do |parte|
	items = items + [[ (parte.created_at.to_date.strftime("%Y") + '.' + parte.id.to_s), parte.operario.nombre + ' ' +
				parte.operario.apellidos,parte.obra.nombre,
				parte.created_at.to_date.strftime("%d-%m-%y") ]]
end

pdf.table items, :border_style => :grid,  
  :row_colors => ["FFFFFF", "DDDDDD"],  
  :headers => ["Referencia", "Operario", "Obra", "Fecha"],  
  :align => { 0 => :center, 1 => :center, 2 => :center, 3 => :center}