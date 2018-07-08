class Speaker
  def play(track_name)
    puts "Playing: #{track_name}"
  end
end

  class Bluetooth_Speaker < Speaker
    def play(track_name)
      puts "Streaming..."
      super
    end
  end

  class MusicBox < Speaker
    def play
      super("Lockhed")
    end
  end

  Bluetooth_Speaker.new.play("Please me")
  MusicBox.new.play
