class Server < Sinatra::Application
  get '/' do
    haml :index
  end

  get '/employees' do
    haml :'employees/index', locals: { employees: EmployeeRecord.all }
  end

  get '/employees/:id' do
    haml :'employees/show', locals: { employee: EmployeeRecord.find(params[:id]) }
  end

  get '/positions' do
    haml :'positions/index', locals: { positions: PositionRecord.all }
  end

  get '/positions/new' do
    haml :'positions/new', locals: { position: PositionRecord.new }
  end

  get '/positions/:id' do
    haml :'positions/show', locals: { position: PositionRecord.find(params[:id]) }
  end

  post '/positions' do
    position = PositionRecord.new(params)
    if position.save
      redirect '/positions'
    else
      haml :'positions/new', locals: { position: position }
    end
  end

  get '/positions/:id/edit' do
    haml :'positions/edit', locals: { position: PositionRecord.find(params[:id]) }
  end

  post '/positions/:id' do
    position = PositionRecord.find params[:id]
    params.delete :id
    position.attributes = params
    if position.save
      redirect '/positions'
    else
      haml :'positions/edit', locals: { position: position }
    end
  end

  get '/positions/:id/delete' do
    PositionRecord.find(params[:id]).delete
    redirect '/positions' 
  end
end
