pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Operario n. #{@operario.id}", :size => 20, :style => :bold

pdf.move_down (25)

pdf.text "Operario: " + "#{@operario.nombre} " + "#{@operario.apellidos}"

pdf.move_down (10)

pdf.text "Usuario: " + "#{@operario.usuario} "

pdf.move_down (10)

pdf.text "Teléfono: " + "#{@operario.telefono} "

pdf.move_down (10)

pdf.text "Email: " + "#{@operario.email} "

pdf.move_down(25)

pdf.text "Listado de partes:", :style => :bold

pdf.move_down(10)

items = []

@partes.each do |parte|
	if parte.operario.id == @operario.id
		items = items + [[ (parte.created_at.to_date.strftime("%Y") + '.' + parte.id.to_s), parte.obra.nombre, parte.created_at.to_date.strftime("%d-%m-%y") ]]
	end
end

if items != []
	pdf.table items, :border_style => :grid,  
  		:row_colors => ["FFFFFF", "DDDDDD"],  
  		:headers => ["Referencia", "Obra", "Fecha"],  
  		:align => { 0 => :right, 1 => :left }
end