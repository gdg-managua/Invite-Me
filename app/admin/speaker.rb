ActiveAdmin.register Speaker do
  permit_params :name, :bio

  index do
    selectable_column
    id_column
    column :name
    column :bio
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :bio
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Speaker Details" do
      f.input :name
      f.input :bio
    end
    f.actions
  end

end
