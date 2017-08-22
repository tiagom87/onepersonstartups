ActiveAdmin.register Startup do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :hollywood, :logo_url, :creator_name, :creator_email, :source_name, :source_url, :revenue, :startup_url, :state, :category_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
	f.inputs do
		f.input :name, label: "Name"
		f.input :hollywood, label: "Short Description"
		f.input :logo_url, label: "Logo URL"
		f.input :creator_name, label: "Creator's Name"
		f.input :creator_email, label: "Creator's Email"
		f.input :source_name, label: "Source's Name"
		f.input :source_url, label: "Source's URL"
		f.input :revenue, label: "Average Monthly Revenue"
		f.input :startup_url, label: "Startup's URL"
		f.input :state, label: "State", as: :select, collection: ["pending","approved","denied"], include_blank: false
		f.input :category_id, label: "Category", as: :select, collection: Category.all.map{|u| ["#{u.name}", u.id]}, include_blank: false
	end
	f.actions
end

end


