class PlanetsController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false

    # new blank form
    def new
        
    end

    # form submit
    def create
        Planet.create(
            name: params[:name],
            image: params[:image],
            orbit: params[:orbit],
            diameter: params[:diameter],
            mass: params[:mass],
            moons: params[:moons],
        )

        # create actions have no template opf their own and we also
        # want to avoid accidental form resubmission so we redirect

        redirect_to( planets_path ) # /planets
    end

    def index
        @planets = Planet.all
    end

    # Details Page for planet
    def show
        # because of the '/planets/:id' route
        # we get access to the id used in the URL
        # in the params variable; so if the URL
        # was in /planets/25, the variable params[:id]
        # will contain the string '25'

        @planet = Planet.find( params[:id] )
    end

    #update

    # pre filled form
    def edit
        @planet = Planet.find( params[:id] )
    end

    # form submit
    def update
        planet = Planet.find(params[:id])
        planet.update(
            name: params[:name],
            image: params[:image],
            orbit: params[:orbit],
            diameter: params[:diameter],
            mass: params[:mass],
            moons: params[:moons]
        )

        # redirect to the show page
        redirect_to(planet_path(planet.id))
    end

    #destroy
    def destroy
        Planet.destroy(params[:id])

        #redirect
        redirect_to (planets_path)
    end


end