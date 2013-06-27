class Nori
  class StringWithAttributes < String

    attr_accessor :attributes

    def to_hash
      hash = {}
      attributes.each do |key, value|
        hash["@#{key}"] = value
      end
      hash.merge("_text" => self.to_s)
    end
  end
end
