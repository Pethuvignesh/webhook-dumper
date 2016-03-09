class WebhookController < ApplicationController
  def get
    save_and_print_challenge

    @challenge = params['hub.challenge']

    render layout: false
  end

  def post
    save_and_print_challenge

    @challenge = params['hub.challenge']

    render layout: false
  end

  def list
    @webhooks = Webhook.order(created_at: 'DESC')
  end

  def save_and_print_challenge
    Webhook.create({payload: params});
  end
end
