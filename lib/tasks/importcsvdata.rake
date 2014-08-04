namespace :csvimport do

  # To import data, run "rake csvimport:import_csv_data"
  
  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = 'db/data.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Community.create!({
          :name => row[0],
          :about => row[1],
          :link => row[2],
          :category_list => row[3],
          :tag_list => row[4],
        }
      )

    end

  end

end