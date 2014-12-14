module ApplicationHelper

	def bip(model, column, type = "input")
		best_in_place_if user_signed_in?, model, 
				column, path: model.class.table_name.to_s + '/' + model.id.to_s,
				type: type
	end

	def bip_url(model, column, url, show = true, type = "input")
		if show || user_signed_in?
			best_in_place_if user_signed_in?, model, 
					column, path: url + '/' + model.id.to_s,
					type: type
		end
	end

	def cms_delete(model, url = false)
		if user_signed_in?
			if url == false
	      link_to 'Delete', model.class.table_name.to_s + '/' + model.id.to_s, 
	      		method: :delete, data: { confirm: 'Are you sure?' }
    	else
    		link_to 'Delete', url + '/' + model.id.to_s, 
	      		method: :delete, data: { confirm: 'Are you sure?' }
    	end
    end
	end

	def cms_add(path, text)
		if user_signed_in?
      link_to text, path, method: :create
    end
	end

	def cms_upload(model, type, text)
		if user_signed_in?
			capture do
	      form_for model, url: model.class.table_name.to_s + '/' + model.id.to_s, 
	      		:html => { :multipart => true } do |form|
	        concat form.label text
	        concat form.file_field type
	        concat form.submit
	      end
	    end
    end
	end

	def login_text(text)
		if user_signed_in?
			text.html_safe
		end
	end

	def pick_weather(yahoo_text)
		
		case yahoo_text

			when "Cloudy", "Mostly Cloudy"
				'<div class="icon icon-cloud"></div>'.html_safe

			when "Sunny", "Mostly Clear", "Mostly Sunny"
				'<div class="icon icon-sun"></div>'.html_safe

			when "PM Showers", "Showers"
				'<div class="icon icon-basecloud"></div>
				<div class="icon icon-showers"></div>'.html_safe

			when "Showers Late"
					'<div class="icon icon-basecloud"></div>
					<div class="icon icon-showers"></div>
					<div class="icon icon-night"></div>'.html_safe

			when "Partly Cloudy"
				'<div class="icon icon-basecloud"></div>
				<div class="icon icon-sunny"></div>'.html_safe

			when "Partly Cloudy/Wind"
				'<div class="icon icon-basecloud"></div>
				<div class="icon icon-windy"></div>
				<div class="icon icon-sunny"></div>'.html_safe

			when "Rain/Wind Late"
				'<div class="icon icon-windyraincloud"></div>
				<div class="icon icon-windyrain"></div>'.html_safe

			when "Rain/Wind"
				'<div class="icon icon-windyraincloud"></div>
				<div class="icon icon-windyrain"></div>'.html_safe

			when "Clouds Early/Clearing Late"
				'<div class="icon icon-2 icon-basecloud"></div>
				<div class="icon icon-2 icon-sunny"></div>
				<div class="icon icon-moon"></div>'.html_safe
			
		end		
	end

end
