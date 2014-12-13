module ApplicationHelper

	def bip(model, column, type = "input")
		best_in_place_if user_signed_in?, model, 
				column, path: model.class.table_name.to_s + '/' + model.id.to_s,
				type: type
	end

	def cms_delete(model)
		if user_signed_in?
      link_to 'Delete', model.class.table_name.to_s + '/' + model.id.to_s, 
      		method: :delete, data: { confirm: 'Are you sure?' }
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
			text
		end
	end

end
