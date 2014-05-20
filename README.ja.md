SpreeAddOnMenu
==============

目的
-------
* admin_tabsに「マスタ管理」が追加されます。
* 「マスタ管理」は単なるインデックスページを表示します。
* インデックスページに追加データに関するリンクを貼るなど、他のエクステンションに使用されることを期待しています。

![ADD ON MENU index](https://raw.githubusercontent.com/wiki/digitalm/spree_add_on_menu/images/menu1.jpg)

設置方法
------------

Gemfileに追加します:

```ruby
gem 'spree_add_on_menu'
```

Bundleしてインストールします:

```shell
bundle
bundle exec rails g spree_add_on_menu:install
```

リンクを加える方法: 
-------
例えばoverridesフォルダにDefaceします

    app/overrides/add_add_on_supplier_configration_menu_to_add_on_menu.rb

    Deface::Override.new(:virtual_path => 'spree/admin/add_on_menu/index',
    :name => 'add_add_on_supplier_configration_menu_to_add_on_menu',
    :insert_bottom => "[data-hook='admin_add_on_menu_sidebar_menu']",
    :text => "
    <%= configurations_sidebar_menu_item t('add_on.add_on_supplier'), admin_add_on_suppliers_path %>
    ")

詳しくは他のエクステンションを参照してください
[spree_add_on_maker](https://github.com/digitalm/spree_add_on_maker)
[spree_add_on_supplier](https://github.com/digitalm/spree_add_on_supplier)

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_add_on_menu/factories'
```

Copyright (c) 2014 [Exsight.inc](http://www.exsight.co.jp/) , released under the New BSD License