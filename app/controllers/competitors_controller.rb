class CompetitorsController < ApplicationController
  # GET /competitors
  # GET /competitors.json
  def index
    @event = Event.find(params[:event_id])
    @competitors = Competitor.where("event_id = ?", params[:event_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competitors }
    end
  end

  # judge_event_competitor GET    /events/:event_id/competitors/:id/judge(.:format) competitors#judge

  def judge
    @event = Event.find(params[:event_id])
    @competitor = Competitor.find(params[:id])
    @judge = Judge.find(1)
    @scoresheet = ScoreSheet.current(@event.id, @judge, @competitor.id).first  
    if @scoresheet.nil?
      redirect_to new_event_competitor_judge_score_sheet_path(@event, @competitor, @judge)
    else
      redirect_to edit_event_competitor_judge_score_sheet_path(@event, @competitor, @judge, @scoresheet)
    end
  end

  # GET /competitors/1
  # GET /competitors/1.json
  def show
    @competitor = Competitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competitor }
    end
  end

  # GET /competitors/new
  # GET /competitors/new.json
  def new
    @competitor = Competitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competitor }
    end
  end

  # GET /competitors/1/edit
  def edit
    @competitor = Competitor.find(params[:id])
  end

  # POST /competitors
  # POST /competitors.json
  def create
    @competitor = Competitor.new(params[:competitor])

    respond_to do |format|
      if @competitor.save
        format.html { redirect_to @competitor, notice: 'Competitor was successfully created.' }
        format.json { render json: @competitor, status: :created, location: @competitor }
      else
        format.html { render action: "new" }
        format.json { render json: @competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competitors/1
  # PUT /competitors/1.json
  def update
    @competitor = Competitor.find(params[:id])

    respond_to do |format|
      if @competitor.update_attributes(params[:competitor])
        format.html { redirect_to @competitor, notice: 'Competitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitors/1
  # DELETE /competitors/1.json
  def destroy
    @competitor = Competitor.find(params[:id])
    @competitor.destroy

    respond_to do |format|
      format.html { redirect_to competitors_url }
      format.json { head :no_content }
    end
  end
end
