class CreameryController < ApplicationController
  def careers_download
    send_file("#{Rails.root}/public/creamery_careers.pdf",
              filename: 'creamery_careers.pdf',
              type: 'application/pdf')
  end

  def apply_now_download
    send_file("#{Rails.root}/public/creamery_apply_now.docx",
              filename: 'creamery_apply_now.docx',
              type: 'application/docx')
  end

  def careers; end

  def cheese; end
end