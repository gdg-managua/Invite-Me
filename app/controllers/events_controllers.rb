class VisitorsController < ApplicationController

    @speakers = Speaker.all
    @talks = Talk.all
    @last_place = Place.last
    gon.latitud = @last_place.latitud
    gon.longitud = @last_place.longitud
    
end