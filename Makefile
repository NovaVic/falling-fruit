export:
	#cp export_csv.sql /tmp/
	#sudo su postgres -c "psql -f /tmp/export_csv.sql fallingfruit_db"
	#cp /tmp/ff.csv.bz2 public/data.csv.bz2
	time rake export_data
	rm -f public/data.csv.bz2
	bzip2 public/data.csv

clusters:
	rake db:migrate:down VERSION=20130503191902
	rake db:migrate:up VERSION=20130503191902
