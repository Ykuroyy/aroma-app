class AromasController < ApplicationController
  def index
    @aromas = Aroma.all
  end

  def result
    @aroma = Aroma.find(params[:id])
    @aroma_icon = get_aroma_icon(@aroma.name)
    @aroma_gradient = get_aroma_gradient(@aroma.name)
    @icon_color = get_icon_color(@aroma.name)
  end

  private

  def get_aroma_icon(aroma_name)
    case aroma_name
    when "ラベンダー"
      "fas fa-spa"
    when "ローズマリー"
      "fas fa-brain"
    when "ペパーミント"
      "fas fa-wind"
    when "オレンジ・スイート"
      "fas fa-sun"
    when "ティーツリー"
      "fas fa-shield-alt"
    when "ゼラニウム"
      "fas fa-balance-scale"
    when "フランキンセンス"
      "fas fa-pray"
    when "イランイラン"
      "fas fa-heart"
    when "レモングラス"
      "fas fa-forward"
    when "サンダルウッド"
      "fas fa-mountain"
    else
      "fas fa-seedling"
    end
  end

  def get_aroma_gradient(aroma_name)
    case aroma_name
    when "ラベンダー"
      "from-purple-400 to-indigo-500"
    when "ローズマリー"
      "from-emerald-400 to-teal-500"
    when "ペパーミント"
      "from-cyan-400 to-blue-500"
    when "オレンジ・スイート"
      "from-orange-400 to-yellow-500"
    when "ティーツリー"
      "from-green-400 to-emerald-500"
    when "ゼラニウム"
      "from-pink-400 to-rose-500"
    when "フランキンセンス"
      "from-amber-400 to-orange-500"
    when "イランイラン"
      "from-pink-400 to-purple-500"
    when "レモングラス"
      "from-lime-400 to-green-500"
    when "サンダルウッド"
      "from-amber-400 to-yellow-500"
    else
      "from-emerald-400 to-teal-500"
    end
  end

  def get_icon_color(aroma_name)
    case aroma_name
    when "ラベンダー"
      "#8b5cf6"
    when "ローズマリー"
      "#10b981"
    when "ペパーミント"
      "#06b6d4"
    when "オレンジ・スイート"
      "#f97316"
    when "ティーツリー"
      "#22c55e"
    when "ゼラニウム"
      "#ec4899"
    when "フランキンセンス"
      "#f59e0b"
    when "イランイラン"
      "#ec4899"
    when "レモングラス"
      "#84cc16"
    when "サンダルウッド"
      "#f59e0b"
    else
      "#10b981"
    end
  end
end
