class Admin::SessionsController < ApplicationController
  layout "admin_login"

  def new
    redirect_to admin_root_path if session[:admin_authenticated]
  end

  def create
    username = ENV.fetch("ADMIN_USERNAME", "harys")
    password = ENV.fetch("ADMIN_PASSWORD", "87654321")

    if params[:username] == username && params[:password] == password
      session[:admin_authenticated] = true
      redirect_to admin_root_path, notice: "Selamat datang."
    else
      flash.now[:alert] = "Username atau password salah."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:admin_authenticated)
    redirect_to admin_login_path
  end
end
