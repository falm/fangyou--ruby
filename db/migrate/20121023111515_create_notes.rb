class CreateNotes < ActiveRecord::Migration
  def up
  	create_table :notes do |t|
  		t.string :title
  		t.text :content
  		t.timestamps
  	end
  end

  def down
  end
end





#CREATE TABLE Notes(
	
#	id tinyint(4) not null auto_increment,
#	member_id	tinyint(4) not null,
#	title	char(200) not null,
#	content	text not null,
#	category_id	tinyint(4) not null,
#	postdate timestamp not null DEFAULT current_timestamp ,
#	primary key (id)
#)type=InnoDB DEFAULT CHARSET=UTF-8;