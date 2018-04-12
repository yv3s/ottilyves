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
      redirect_to rsvp_path
      UserMailer.welcome(@guest.prenom, @guest.nom, @guest.email, @guest.presence, @guest.presence_brunch, @guest.nombre, @guest.remarques).deliver_now
    else
      flash[:alert] = "Oooops, il semblerait que tous les champs ne soient pas renseignés !"
      render :rsvp
    end
  end

  def liste
  end
end
