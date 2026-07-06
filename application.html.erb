class QuizController < ApplicationController
  def index
    if params[:group].present?
      session[:group_filter] = params[:group]
      session[:asked_ids] = []
    end

    pick_next_word
    @word  = Word.find_by(id: session[:current_word_id])
    @score = session[:score].to_i
    @total = session[:total].to_i
    @group_filter = session[:group_filter] || "all"
  end

  def check
    word = Word.find(params[:word_id])

    romaji_ok = word.romaji_correct?(params[:romaji])
    korean_ok = word.korean_correct?(params[:korean])

    session[:total] = session[:total].to_i + 1
    session[:asked_ids] ||= []
    session[:asked_ids] << word.id

    if romaji_ok && korean_ok
      session[:score] = session[:score].to_i + 1
      flash[:notice] = "정답입니다! 🎉"
    else
      corrections = []
      corrections << "발음: #{word.romaji}" unless romaji_ok
      corrections << "의미: #{word.korean_meaning}" unless korean_ok
      flash[:alert] = "아쉬워요! (정답 → #{corrections.join(' / ')})"
    end

    redirect_to root_path
  end

  def reset
    session[:score] = 0
    session[:total] = 0
    session[:asked_ids] = []
    redirect_to root_path
  end

  private

  def word_scope
    if session[:group_filter].present? && session[:group_filter] != "all"
      Word.where(group: session[:group_filter])
    else
      Word.all
    end
  end

  def pick_next_word
    session[:asked_ids] ||= []
    scope = word_scope
    remaining = scope.where.not(id: session[:asked_ids])

    if remaining.empty?
      session[:asked_ids] = []
      remaining = scope
    end

    session[:current_word_id] = remaining.order("RANDOM()").first&.id
  end
end
