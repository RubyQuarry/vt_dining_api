namespace :db do
  desc "TODO"
  task dining_halls: :environment do
    DiningCenter.delete_all
    center_names = %w(D2 Owens HokieGrill WestEnd TurnerPlace Deets Burger37)
    center_names.each do |f|
      dine = DiningCenter.create!(name: f)
      %w(Monday Tuesday WendesDay Thursday Friday Saturday Sunday).each do |d|
        dine.days.create!(name: d)
      end

    end
  end

end
