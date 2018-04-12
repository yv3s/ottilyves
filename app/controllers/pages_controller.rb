class PagesController < ApplicationController
  def home
  end

  def lajournee
  end

  def leshotels
  end

  def rsvp
    @guest = Guest.new
  end

  def rsvpnew
    parameters = params[:guest]
    @guest = Guest.new(
      prenom: parameters[:prenom],
      nom: parameters[:nom],
      email: parameters[:email],
      presence: parameters[:presence],
      presence_brunch: parameters[:presence_brunch],
      nombre: parameters[:nombre],
      remarques: parameters[:remarques])
    if @guest.save
      flash[:notice] = "Réponse bien enregistrée, merci !"
      redirect_to root_path
    else
      flash[:alert] = "Oooops, il semblerait que tous les champs ne soient pas renseignés !"
      render :rsvp
    end
  end

  def liste
  end
end
