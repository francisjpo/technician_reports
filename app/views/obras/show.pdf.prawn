pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Obra: #{@obra.nombre}", :size => 20, :style => :bold

pdf.move_down (25)

pdf.text "Dirección: " + "#{@obra.direccion}"

pdf.move_down (10)

pdf.text "Ciudad: " + "#{@obra.ciudad.nombre}"

pdf.move_down (10)

pdf.text "Distancia: " + "#{@obra.ciudad.kilometraje}"

pdf.move_down (10)

pdf.text "Dieta: " + "#{@obra.ciudad.dieta}"

pdf.move_down(25)

pdf.text "Listado de partes:", :style => :bold

pdf.move_down(10)

items = []

@partes.each do |parte|
	if parte.obra.id == @obra.id
		items = items + [[ (parte.created_at.to_date.strftime("%Y") + '.' + parte.id.to_s), parte.operario.nombre + ' ' + parte.operario.apellidos, parte.created_at.to_date.strftime("%d-%m-%y") ]]
	end
end

if items != []
	pdf.table items, :border_style => :grid,  
  		:row_colors => ["FFFFFF", "DDDDDD"],  
  		:headers => ["Referencia", "Operario", "Fecha"],  
  		:align => { 0 => :right, 1 => :left }
end