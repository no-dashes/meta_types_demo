class DashboardController < ApplicationController

  def reset
    Thing.transaction do
      Thing.all.map &:destroy
      MetaTypeMember.all.map &:destroy
      MetaType.all.map &:destroy
      MetaTypeProperty.all.map &:destroy
      instance_eval File.new(File.join(Rails.root,'db','seeds.rb')).read
    end
    redirect_to root_path()
  end

end