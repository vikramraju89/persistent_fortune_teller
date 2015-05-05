class RandomController < ApplicationController

  def generate
    @first = params["lower"].to_i
    @second = params["upper"].to_i
    @ournumber = rand(@first..@second)
  end
end
