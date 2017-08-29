class Search < RailsSimpleSearch::Base
  # pre_process provides a way to adjust the search criteria
  # before the search running
  pre_process("User") do 
    remove_criteria('first_name')
  end 
end
