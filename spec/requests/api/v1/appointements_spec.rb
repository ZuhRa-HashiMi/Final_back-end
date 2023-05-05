require 'swagger_helper'

RSpec.describe 'api/v1/appointements', type: :request do
  path '/api/v1/appointements' do
    get('list appointements') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create appointement') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :appointement, in: :body, schema: {
          type: :object,
          properties: {
            user: { type: :references },
            doctor: { type: :references }
          },
          required: %w[user doctor]
        }
        response '201', 'appointement created' do
          let(:doctor) { Doctor.create(fullname: 'Dodo', specialization: 'medicine', profile_picture: 'http://example.com/avatar.jpg', fees: 50.0, available_time: 'tue 12:00pm') }
          let(:user) do
            User.create!(name: 'Ayesha', email: 'ayesha@gmail.com', password: 'topsecret',
                         password_confirmation: 'topsecret')
          end
          let(:appointement) { { user:, doctor: } }
          run_test!
        end

        response '422', 'invalid request' do
          let(:user) do
            User.create!(name: 'Ayesha', email: 'ayesha@gmail.com', password: 'topsecret',
                         password_confirmation: 'topsecret')
          end
          let(:appointement) { { user: } }
          run_test!
        end
      end
    end
  end

  path '/api/v1/appointements/new' do
    get('new appointement') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/appointements/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show appointement') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update appointement') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update appointement') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete appointement') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
