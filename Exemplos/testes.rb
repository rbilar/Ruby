require 'byebug'

class Chameleon
  alias __inspect__ inspect
  def method_missing(method, *arg)
    if method.to_s[0..2] == 'to_'
      @identity = __inspect__.sub('Chameleon', method.to_s.sub('to_', '').capitalize)
      def inspect
        @identity
      end
      self
    else
      super # method_missing overrides the default Kernel.method_missing
      # pass on anything we weren't looking for so the Chameleon stays unnoticed and uneaten ;)
    end
  end
  end
mrlizard = Chameleon.new
mrlizard.to_rock
