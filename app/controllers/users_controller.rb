class UsersController < ApplicationController

  require 'apns'

  APNS.host = 'gateway.sandbox.push.apple.com'
  APNS.pem  = Dir.pwd + '/apns-dev.pem'
  APNS.port = 2195

  def notifyAll

    puts "HERE"

    User.all.each do |user|
      p "push to #{user.deviceToken}"
      APNS.send_notification(user.deviceToken,
                             :alert => 'PennApps is awesome!', :sound => 'default', :other => {:type => 'pennapps'})
    end

  end
end
