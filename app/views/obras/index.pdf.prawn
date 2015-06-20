pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Listado de obras", :size => 20, :style => :bold

pdf.move_down (25)

items = []

@obras.each do |obra|
	items = items + [[ obra.nombre, obra.direccion, obra.ciudad.nombre ]]
end

pdf.table items, :border_style => :grid,  
  :row_colors => ["FFFFFF", "DDDDDD"],  
  :headers => ["Obra", "Dirección", "Ciudad"],  
  :align => { 0 => :center, 1 => :center, 2 => :center, 3 => :center}