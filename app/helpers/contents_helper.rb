module ContentsHelper

  def special_types
    Content.types.keys.map do |type|
      [t("activerecord.attributes.content.types.#{type}"), type]
    end
  end
end
