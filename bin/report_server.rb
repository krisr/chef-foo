require 'rubygems'
require 'sinatra'
require 'json'
require 'pp'

post '/host/:host_id/report/:report_key/tasks' do
  tasks = JSON.parse(request.body.read)
  pp params
  pp tasks
  "Received task list successfully"
end

post '/host/:host_id/report/:report_key/task' do
  content = JSON.parse(request.body.read)
  pp params
  pp content
  "Received task update successfully"
end