# class ErrorsController < ApplicationController
#     skip_before_action :require_login
#     after_filter :return_errors, only: [:not_found, :no_access]

#     def not_found
#         @status = 404
#         @layout = "application"
#         @template = "not_found_error"
#     end

#     def no_access
#         @status = 403
#         @layout = "application"
#         @template = "no_access"
#     end

#     private

#     def return_errors
#         respond_to do |format|
#               format.html { render template: 'errors/' + @template, layout: 'layouts/' + @layout, status: @status }
#               format.all  { render nothing: true, status: @status }
#         end
#     end

#     def require_login
#         return head(:forbidden) unless session.include? :user_id
#     end
# end