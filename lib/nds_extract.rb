require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  total=[]
  row=0
    while row<nds.length do
      column=0
      total[row]=0
      while column<nds[row][:movies].length do
        total[row]+=nds[row][:movies][column][:worldwide_gross]
        column+=1
      end
      result.merge!(nds[row][:name]=>total[row])
      row+=1
    end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  
  # gross=0
  # row=0
  # while row<director_data.length do
  #   column=0
  #   while column<director_data[row][:movies].length do
  #     gross+=director_data[row][:movies][column][:worldwide_gross]
  #     column+=1
  #   end
  #   row+=1
  # end
  # gross
end
