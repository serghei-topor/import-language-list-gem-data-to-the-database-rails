class CreateLanguages < ActiveRecord::Migration[5.1]
	def up
		string_fields = %w(name common_name iso_639_1 iso_639_3 iso_639_2t iso_639_2b)
    create_table :languages do |t|
			string_fields.each{|f|t.string f}
			t.boolean :is_common
			t.integer :language_type
      t.timestamps
    end
		string_fields.each do |f|
			add_index :languages, f
		end
		%w(is_common language_type).each{|f| add_index :languages, f}
  end

	def down
		drop_table(:languages, if_exists: true)
	end
end
