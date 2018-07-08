module Wild
  class Dog
    def to_s
      "super dog"
    end
  end
end

module Home
  module Room
    class Dog
      def to_s
        "extra dog"
      end
    end
  end
end

puts Wild::Dog.new
puts Home::Dog.new
