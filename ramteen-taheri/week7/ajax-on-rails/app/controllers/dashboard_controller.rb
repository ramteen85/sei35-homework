class DashboardController < ApplicationController
  def app
  end

  def dogs_index
    # Ajax version ONLY
    headers['Access-Control-Allow-Origin'] = '*';
    render json: Dog.all
  end

  def uptime
    # Run the command and store the output
    @up = `uptime`

    response = {
      command: 'uptime',
      output: @up
    }

    respond_to do |format|
      format.html # do nothing special - render default template
      format.json { render json: response } # render JSON in response to ajax request
    end # respond to
  end # uptime
end # controller
