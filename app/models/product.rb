class Product < ActiveRecord::Base
  
  searchable do
    text  :title, :description, 
    text :producer_name, :category_name, :multiple  => true
    integer :offer_count, :shop_count, :click_value, :views
    integer :shop_id, :producer_id, :category_id, :multiple => true, :references => true
    double :price, :trie => true
    
    string :producer, :category, :multiple => true
    
    # <field name="id">208725468699679</field>
    # <field name="title">Słuchawki Skullcandy 08 Lowrider N2</field>
    # <field name="description">Kolekcja: wiosna 2008 Słuchawki stereofoniczne Skullcandy W tych słuchawkach kryje się ogromna moc! Bardzo oryginalny i stylowy design nacieszy także oczy -&amp;amp;nbsp;Twoje i otoczenia! Uwaga! Wszystkie miękkie części na muszlach i pałąku są pokryte s</field>
    # <field name="producer">2295|SkullCandy</field>
    # <field name="producer_id">2295</field>
    # <field name="producer_name">SkullCandy</field>
    # <field name="price">179</field>
    # <field name="offer_count">1</field>
    # <field name="shop_count">1</field>
    # <field name="click_value">0</field>
    # <field name="views">0</field>
    # <field name="category">445|Sprzęt RTV</field>
    # <field name="category_id">445</field>
    # <field name="category_name">Sprzęt RTV</field>
    # <field name="category">446|Audio</field>
    # <field name="category_id">446</field>
    # <field name="category_name">Audio</field>
    # <field name="category">7967|Słuchawki Hi-Fi</field>
    # <field name="category_id">7967</field>
    # <field name="category_name">Słuchawki Hi-Fi</field>
    # <field name="category_path">Sprzęt RTV/Audio/Słuchawki Hi-Fi</field>
    # <field name="shop_id">169</field>
  end
end
