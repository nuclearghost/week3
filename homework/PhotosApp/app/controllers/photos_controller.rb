class PhotosController < ActionController::Base

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new
		@photo.title = params[:photo][:title]
		@photo.url = params[:photo][:url]
		@photo.save
		redirect_to photos_url
	end

	def show
		@photo = Photo.find_by_id(params[:id])
	end

	def edit
		@photo = Photo.find_by_id(params[:id])
	end

	def update
		@photo = Photo.find_by_id(params[:id])
		@photo.title = params[:photo][:title]
		@photo.url = params[:photo][:url]
		@photo.save
		redirect_to photos_url
	end

	def destroy
		@photo = Photo.find_by_id(params[:id])
		@photo.destroy
		redirect_to photos_url
	end

end