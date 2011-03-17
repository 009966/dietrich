class Reel
  #attr_accessor :reel
  def initialize( uuid, annotationtext )
    @reel = { :uuid => uuid, :annotationtext => annotationtext }
  end
  def add_assets( mainpicture, mainsound, mainsubtitle )
    @reel[ :assetlist ] = { :mainpicture => mainpicture, :mainsound => mainsound, :mainsubtitle => mainsubtitle }
  end
  def []( key )
    @reel[ key ]
  end
end

mainpicture = { :uuid => '1234-5678', :editrate => '24 1', :intrinsicduration => 5000, :entrypoint => 0, :duration => 5000, :keyid => nil, :hash => nil, :framerate => '24 1', :aspectratio => '1.85' }
mainsound = { :uuid => '2345-6789', :editrate => '24 1', :intrinsicduration => 5000, :entrypoint => 0, :duration => 5000, :keyid => nil, :hash => nil }
mainsubtitle = {  }

r = Reel.new( 'uuid-1234-reel', 'Reel 1' )
r.add_assets( mainpicture, mainsound, mainsubtitle )

p r[ :annotationtext ]
p r[ :assetlist ][ :mainpicture ]
p r[ :assetlist ][ :mainsound ]
p r[ :assetlist ][ :mainsubtitle ]
