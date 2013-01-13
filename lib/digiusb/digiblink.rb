# little class which abstracts setting colour of digiblink
require 'digiusb'
require 'colorist'

class DigiBlink < DigiUSB
  def color=(color)
    color = color.to_color unless color.is_a? Colorist::Color

    # send out each byte
    self.putc 's' # start character
    self.putc color.r.to_i
    self.putc color.g.to_i
    self.putc color.b.to_i
  end
end
