module ContentsHelper

    def special_types
        Content.special_types.keys.map do |type|
            [t("activerecord.attributes.content.types.#{types}", type)]
        end
    end    
end