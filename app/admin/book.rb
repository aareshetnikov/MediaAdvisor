ActiveAdmin.register Book do
  permit_params :name,:author,:description,:tags
end