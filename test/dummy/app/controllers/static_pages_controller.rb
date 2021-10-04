class StaticPagesController < ApplicationController
  def index
    @data_gema_plugin = MR.new
    @data_gema_plugin.add(:prueba, "shared/prueba", {asd: 'asd', qwe: 'qwe'})

  end
end
