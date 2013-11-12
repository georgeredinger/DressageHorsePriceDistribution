require 'capybara/mechanize'
$equine=[]

#Dir.glob('for_sale100*.html') do |item|
Dir.glob('*.html') do |item|
    puts "File Name:#{item}"
    text = File.read(item)
    if ((item =~ /sold/) == nil) 
        status ="ForSale"
    else
        status = "Sold"
    end
    @doc = Nokogiri::HTML(text)
    if status == "ForSale"
        $fields = @doc.css(".views-row")
        $fields.each do |field|
            specs =   field.css(".group-hm-specifics")
            @subdoc = field.css(".field-content .field-content")
            name = field.css(".views-field-title")
            address = field.css(".views-field-nothing")
            contact_name  = specs.css(".views-field-field-hm-contact-name-value .field-content .field-content")

            contact_phone = specs.css(".views-field-field-hm-phone-value .field-content .field-content")
            contact_email = specs.css(".views-field-field-hm-email-email .field-content .field-content")
            gender        = specs.css(".views-field-field-hm-gender-value .field-content .field-content")
            birth_year    = specs.css(".views-field-field-hm-birthyear-value .field-content .field-content")
            height        = specs.css(".views-field-field-hm-sizedec-value .field-content .field-content")
            breed         = specs.css(".views-field-field-hm-breed-value .field-content .field-content")
            sire          = specs.css(".views-field-field-hm-sire-value .field-content .field-content")
            price         = specs.css(".views-field-field-hm-price-value .field-content .field-content")
            dam_sire      = specs.css(".views-field-field-hm-dam-sire-value .field-content .field-content")
            color         = specs.css(".views-field-field-hm-color-value .field-content .field-content")
            teaser        = field.css(".views-field-field-teaser-value   .field-content .field-content")

            if contact_name.text().empty?  
                next
            end
            puts "ForSale" 
            puts "name          #{name.text().strip}" 
            puts "address          #{address.text().strip}" 
            puts "price          #{price.text().strip}" 
            puts "contact_name  #{contact_name.text()}" 
            puts "contact_phone #{contact_phone.text()}" 
            puts "contact_email #{contact_email.text()}" 
            puts "gender        #{gender.text()}" 
            puts "birth_year    #{birth_year.text()}"
            puts "height        #{height.text()}" 
            puts "breed         #{breed.text()}" 
            puts "sire          #{sire.text()}" 
            puts "damsire       #{dam_sire.text()}" 
            puts "color         #{color.text()}" 
            puts "teaser         #{teaser.text()}" 
            puts "key:  #{sire.text}_#{dam_sire.text}_#{birth_year.text}_#{height.text}_#{gender.text}_#{breed.text}".strip.gsub(/\s+/, "")
            puts "-"*20
        end
    else
        $fields = @doc.css(".view-content .views-row")
        $fields.each do |field|
            name = field.css(".views-field-title")
            specs = field.css(".group-hm-specifics")
            contact_name  = specs.css(".views-field-field-hm-contact-name-value .field-content .field-content")
            contact_phone = specs.css(".views-field-field-hm-phone-value .field-content .field-content")
            contact_email = specs.css(".views-field-field-hm-email-email .field-content .field-content")
            gender        = specs.css(".views-field-field-hm-gender-value .field-content .field-content")
            birth_year    = specs.css(".views-field-field-hm-birthyear-value .field-content .field-content")
            height        = specs.css(".views-field-field-hm-sizedec-value .field-content .field-content")
            breed         = specs.css(".views-field-field-hm-breed-value .field-content .field-content")
            sire          = specs.css(".views-field-field-hm-sire-value .field-content .field-content")
            dam_sire      = specs.css(".views-field-field-hm-dam-sire-value .field-content .field-content")
            color         = specs.css(".views-field-field-hm-color-value .field-content .field-content")
            teaser        = field.css(".views-field-field-teaser-value   .field-content .field-content")
            if contact_name.text().empty?  
                next
            end
            puts "Sold"
            puts "name          #{name.text().strip}" 
            puts "contact_name  #{contact_name.text()}" 
            puts "contact_phone #{contact_phone.text()}" 
            puts "contact_email #{contact_email.text()}" 
            puts "gender        #{gender.text()}" 
            puts "birth_year    #{birth_year.text()}"
            puts "height        #{height.text()}" 
            puts "breed         #{breed.text()}" 
            puts "sire          #{sire.text()}" 
            puts "color         #{color.text()}" 
            puts "teaser        #{teaser.text()}" 
            puts "key:  #{sire.text}_#{dam_sire.text}_#{birth_year.text}_#{height.text}_#{gender.text}_#{breed.text}".strip.gsub(/\s+/, "")
            puts "-"*20
        end
    end
end
