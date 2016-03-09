class WebhookController < ApplicationController
  def get
    save_and_print_params
  end

  def post
    save_and_print_params
  end

  def list
    @webhooks = Webhook.order(created_at: 'DESC')
  end

  def save_and_print_params
  	Webhook.create({payload: params});
  	render json: params
  end
end
