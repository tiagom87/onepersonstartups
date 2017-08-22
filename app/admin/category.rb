ActiveAdmin.register Category do

permit_params :name

# Input Form Begins

form do |f|
	f.inputs do
		f.input :name, label: "Category Name"
	end
	f.actions
end

# Input Form Ends

# Index Begins

index do
	selectable_column
	column :id
	column "Name" do |category|
		link_to category.name, admin_category_path(category)
	end
	column "Startups" do |category|
		category.startups.size
	end
	column "Total Revenue" do |category|
		if category.startups.size > 0
			category.startups.to_a.sum(&:revenue)
		else
			return 0
		end
	end
	column :created_at
	actions
end

# Index Ends

end
