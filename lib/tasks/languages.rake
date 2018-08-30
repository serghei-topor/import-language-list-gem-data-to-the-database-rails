require 'csv'
namespace :languages do
	task :import => :environment do
		puts "Migration started"

		types = {ancient:1, constructed:2, extinct:3, historical:4, living:5, special:6}
		lng_csv_path = '/tmp/languages.csv'
		f = File.open(lng_csv_path, 'w')
		LanguageList::ALL_LANGUAGES.each do |l|
			f.puts "#{l.name};#{l.common_name};#{l.iso_639_1};#{l.iso_639_2b};#{l.iso_639_2t};#{l.iso_639_3};#{l.common?};#{types[l.type]}"
		end
		f.close

		Language.delete_all

		CSV.foreach("/tmp/languages.csv", :headers=>false, :col_sep=>";") do |row|
			Language.create name: row[0],
				common_name: row[1],
				iso_639_1: row[2],
				iso_639_2b: row[3],
				iso_639_2t: row[4],
				iso_639_3: row[5],
				is_common: row[6],
				language_type: row[7]
		end

		FileUtils.rm_f lng_csv_path

		puts "Migration finished"
	end
end
