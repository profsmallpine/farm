class CreameryController < ApplicationController
  def careers_download
    send_file("#{Rails.root}/public/creamery_careers.pdf",
              filename: 'creamery_careers.pdf',
              type: 'application/pdf')
  end

  def careers; end

  def cheese; end
end