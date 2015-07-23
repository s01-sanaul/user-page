class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
def show
  @id = params["id"]
  
	if params["id"]=="1"

		@name="Carl Sagan "
	    @join_date="1970"
	    @descrip="Carl Sagan was an American astronomer, cosmologist, astrophysicist, astrobiologist, author, science popularizer, and science communicator in astronomy and other natural sciences. His contributions were central to the discovery of the high surface temperatures of Venus. However, he is best known for his contributions to the scientific research of extraterrestrial life, including experimental demonstration of the production of amino acids from basic chemicals by radiation."
	    @image="http://vignette4.wikia.nocookie.net/fallout/images/a/a7/Carl_Sagan.jpg/revision/latest?cb=20110711205326"
	    @location="Brooklyn"
	    @completion="45%"      

	elsif params["id"]=="2"

		@name="Neil DeGrasse Tyson "
	    @join_date="1965"
	    @descrip="Neil DeGrasse Tyson is an American astrophysicist, cosmologist, author, and science communicator. Since 1996, he has been the Frederick P. Rose Director of the Hayden Planetarium at the Rose Center for Earth and Space in New York City. The center is part of the American Museum of Natural History, where Tyson founded the Department of Astrophysics in 1997 and has been a research associate in the department since 2003."
	    @image="http://vignette1.wikia.nocookie.net/epicrapbattlesofhistory/images/c/c3/Neil-degrasse-tyson.jpg/revision/latest?cb=20140519223906"
	    @location="Chicago"
	    @completion="75%"

	elsif params["id"]=="3"

		@name="Bill Nye "
	    @join_date="1960"
	    @descrip="The Science Guy"
	    @image="http://www.psd1.org/cms/lib4/WA01001055/Centricity/Domain/1039/bill-nye_250px_200px.png"
	    @location="Everywhere"
	    @completion="100%"

	    end

	render 'show'

	end
  
end
