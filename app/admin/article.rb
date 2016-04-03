ActiveAdmin.register Article do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	form do |f|
		inputs 'Details' do
			input :title
			#input :published_at, label: "Publish Post At"
			li "Created at #{f.object.created_at}" unless f.object.new_record?
			#input :category
		end

		inputs 'Содержание' do
			input :text, input_html: { class: "tinymce" }
		end

		inputs 'Краткое содержание' do
			input :description, input_html: { class: "tinymce" }
		end

		actions
	end

end