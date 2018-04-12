class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(prenom, nom, email, presence, presence_brunch, nombre, remarques)
    @prenom = prenom
    @nom = nom
    @email = email
    @presence = presence?(presence)
    @brunch = presence?(presence_brunch)
    @nombre = nombre
    @remarques = remarques

    mail(to: ["yves.trocheris@gmail.com", "ottiliefumery@live.fr"], subject: "#{@prenom} #{@nom} a RSVP")
  end

  private

  def presence?(boolean)
    if boolean == true
      "Oui"
    else
      "Non"
    end
  end
end

