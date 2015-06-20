pdf.font_size = 13
pdf.text "Instalaciones & Proyectos, S.L.", :size => 35, :style => :bold
pdf.move_down (25)
pdf.text "Parte n. #{@parte.id} " +
			"(#{@parte.created_at.to_date.strftime("%d-%m-%y")}). " +
			"Operario: #{@parte.operario.nombre} #{@parte.operario.apellidos}",
			:size => 20, :style => :bold

pdf.move_down (25)

pdf.text "Obra: " + "#{@parte.obra.nombre}"

pdf.move_down (10)

pdf.text "Ciudad: " + "#{@parte.obra.ciudad.nombre} " +
			"(#{@parte.obra.ciudad.kilometraje} km). " +
			"Dieta: " + "#{@parte.obra.ciudad.dieta}"

pdf.move_down (10)

horas = ""

if !@parte.horas_base.nil?
	horas = horas + "Horas base: " + "#{@parte.horas_base}"
end
	
if !@parte.horas_extra.nil?
	horas = horas + "  /  " + "Horas extra: " + "#{@parte.horas_extra}"
end

if !@parte.horas_nocturna.nil?
	horas = horas + "  /  " + "Horas nocturna: " + "#{@parte.horas_nocturna}"
end

if !@parte.horas_festivo.nil?
	horas = horas + "  /  " + "Horas festivo: " + "#{@parte.horas_festivo}"
end

pdf.text horas

pdf.move_down (25)

pdf.text "Listado de materiales:", :style => :bold

pdf.move_down(10)

items = []

@materiales.each do |material|
	if (material.id == @parte.ud1material_id) && !@parte.ud1.nil?
		items = items + [[ @parte.ud1, material.nombre ]]
	end
	if (material.id == @parte.ud2material_id) && !@parte.ud2.nil?
		items = items + [[ @parte.ud2, material.nombre ]]
	end
	if (material.id == @parte.ud3material_id) && !@parte.ud3.nil?
		items = items + [[ @parte.ud3, material.nombre ]]
	end
	if (material.id == @parte.ud4material_id) && !@parte.ud4.nil?
		items = items + [[ @parte.ud4, material.nombre ]]
	end
	if (material.id == @parte.ud4material_id) && !@parte.ud4.nil?
		items = items + [[ @parte.ud4, material.nombre ]]
	end
	if (material.id == @parte.ud5material_id) && !@parte.ud5.nil?
		items = items + [[ @parte.ud5, material.nombre ]]
	end
	if (material.id == @parte.ud6material_id) && !@parte.ud6.nil?
		items = items + [[ @parte.ud6, material.nombre ]]
	end
	if (material.id == @parte.ud7material_id) && !@parte.ud7.nil?
		items = items + [[ @parte.ud7, material.nombre ]]
	end
	if (material.id == @parte.ud8material_id) && !@parte.ud8.nil?
		items = items + [[ @parte.ud8, material.nombre ]]
	end
	if (material.id == @parte.ud9material_id) && !@parte.ud9.nil?
		items = items + [[ @parte.ud9, material.nombre ]]
	end
	if (material.id == @parte.ud10material_id) && !@parte.ud10.nil?
		items = items + [[ @parte.ud10, material.nombre ]]
	end
	if (material.id == @parte.ud11material_id) && !@parte.ud11.nil?
		items = items + [[ @parte.ud11, material.nombre ]]
	end
	if (material.id == @parte.ud12material_id) && !@parte.ud12.nil?
		items = items + [[ @parte.ud12, material.nombre ]]
	end
	if (material.id == @parte.ud13material_id) && !@parte.ud13.nil?
		items = items + [[ @parte.ud13, material.nombre ]]
	end
	if (material.id == @parte.ud14material_id) && !@parte.ud14.nil?
		items = items + [[ @parte.ud14, material.nombre ]]
	end
	if (material.id == @parte.ud15material_id) && !@parte.ud15.nil?
		items = items + [[ @parte.ud15, material.nombre ]]
	end
	if (material.id == @parte.ud16material_id) && !@parte.ud16.nil?
		items = items + [[ @parte.ud16, material.nombre ]]
	end
	if (material.id == @parte.ud17material_id) && !@parte.ud17.nil?
		items = items + [[ @parte.ud17, material.nombre ]]
	end
	if (material.id == @parte.ud18material_id) && !@parte.ud18.nil?
		items = items + [[ @parte.ud18, material.nombre ]]
	end
	if (material.id == @parte.ud19material_id) && !@parte.ud19.nil?
		items = items + [[ @parte.ud19, material.nombre ]]
	end
	if (material.id == @parte.ud20material_id) && !@parte.ud20.nil?
		items = items + [[ @parte.ud20, material.nombre ]]
	end
end

pdf.table items, :border_style => :grid,  
  :row_colors => ["FFFFFF", "DDDDDD"],  
  :headers => ["Cantidad", "Descripción"],  
  :align => { 0 => :right, 1 => :left }