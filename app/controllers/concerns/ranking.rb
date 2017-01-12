module Ranking
  extend ActiveSupport::Concern

  private

  def ranking_thema
    thema_ids = Review.group(:thema_id).order('count_thema_id DESC').count(:thema_id).keys
    @ranking = thema_ids.map{ |id| Thema.find(id)}
    @themas = Thema.all
    @themas.each do |thema|
      if thema.reviews.blank?
        @ranking << thema
      end
    end
  end

  def more_less_reviews_thema
    @thema = Thema.find(params[:id])
    thema_ids = Review.group(:thema_id).order('count_thema_id DESC').count(:thema_id).keys
    @ranking = thema_ids.map{ |id| Thema.find(id)}
    @themas = Thema.all
    @themas.each do |thema|
      if thema.reviews.blank?
        @ranking << thema
      end
    end

    @ranking.each_with_index do |rank,i|
      if rank == @thema
        @more_reviews_thema = @ranking[i - 1]
        @less_reviews_thema = @ranking[i + 1]
      end
    end
  end
end
