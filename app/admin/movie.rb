ActiveAdmin.register Movie do
  permit_params :name,:director,:description,:tags
end