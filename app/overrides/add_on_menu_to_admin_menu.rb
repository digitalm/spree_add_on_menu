Deface::Override.new(:virtual_path => 'spree/admin/shared/_menu',
  :name => 'add_on_menu_to_admin_menu',
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => "
<% if can? :admin, Spree::AddOnMaker %>
<%= tab(:AddOnMenus, :url => spree.admin_add_on_menu_path, :icon => 'icon-th-large') %>
<% end %>
")