class PagesController < ApplicationController
  def home
  end

  def lajournee
    @markers =
      {
        lat: 49.1895336,
        lng: 2.4162138,
       }
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
      nombre_enfants: parameters[:nombre_enfants],
      remarques: parameters[:remarques])
    if @guest.save
      flash[:notice] = "Réponse bien enregistrée, merci !"
      redirect_to rsvp_path
      UserMailer.welcome(@guest.prenom, @guest.nom, @guest.email, @guest.presence, @guest.presence_brunch, @guest.nombre, @guest.nombre_enfants, @guest.remarques).deliver_now
    else
      flash[:alert] = "Oooops, il semblerait que tous les champs ne soient pas renseignés !"
      render :rsvp
    end
  end

  def liste
  end

  def  recap
    @guests = Guest.all
    @brunch = Guest.where(presence_brunch: true)
  end

end
