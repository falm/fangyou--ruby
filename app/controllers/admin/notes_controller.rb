class Admin::NotesController < ApplicationController

#	def index
#		@notes = Note.all
#	end

	def index
		respond_to do |format|
		  format.html # index.html.erb
		  #format.xml  { render :xml => Note.all }
		  
		  # With the Flexigrid, we need to render Json data
		  format.js do
		    # What is the first line of the result set we want ? (due to pagination. 0 = first)
		    offset = (params["page"].to_i-1)*params["rp"].to_i if params["page"] and params["rp"]

		    # Conditions passed by flexigrid
		    conditions = [params["qtype"]+"=?", params["query"]] if params["query"] and params["query"].strip!=""

		    notes = Note.where(conditions)

		    # Total count of lines, before paginating
		    total = notes.count

		    # notes from the page
		    notes_de_la_page = notes
		      .order([params["sortname"], params["sortorder"]].join(" "))
		      .offset(offset)
		      .limit(params["rp"]).all
		    
		    # Juste an ugly trick to add a bouton (button) method to the class, to use it in the Flexigrid
		    Note.class_eval do 
		      def bouton
		        %{<img src="images/close.png">}
		      end
		    end

		    # Rendering
		    render :json => {
		        :rows=>notes_de_la_page.collect{|r| {:id=>r.id, :cell=>{id: r.id,title: r.title} } } , 
		        :page=>params["page"],
		        :total=>total
		      }.to_json
		      
		  end #format.js
		  
		end #respond_to

	end #index method
	
	def show
		@note = Note.find(params[:id])
	end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])
		@note.update_attributes(params[:note])
		@note.save
		redirect_to note_url(@note)
	end

	def new
		@note = Note.new
	end

	def create
		Note.create(params[:note])
		redirect_to notes_url
	end

	def destroy
		@note.find(params[:id])
		@note.destroy
		redirect_to notes_url
	end


end
