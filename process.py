log_file = open("um-server-01.txt")
# this opening the file 'um-server.01.txt' and assigning it to log_file in order to get the necessary data from the file.

def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Tue":
            print(line)
#this is then requesting to go and get the data from the file and getting all the orders that where on 5/20/2014 Tuesday and printing those lines 

sales_reports(log_file)


#second part
log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

 sales_reports(log_file)
