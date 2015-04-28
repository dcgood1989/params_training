class EchoController < ApplicationController

  before_action do
    @params_to_print = {}
# how to print params onto the screen to see what's goin on. The 40 stars breaks it up so you can see exactly where this is happening.
    p "*"* 40
    p params
  end

  def echo
    @params_to_print = params.to_hash.except('utf8', 'authenticity_token', 'template', 'commit', 'action', 'controller')
    render action: params[:template]
  end

end
