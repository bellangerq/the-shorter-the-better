module ApplicationHelper

  def mailto_url
    I18n.t('helpers.mailto_url')
  end

  def author_url
    I18n.t('helpers.author_url')
  end


  def share_url
    'https://twitter.com/home?status=' + share_message
  end

  def share_message
    I18n.t('helpers.sharing_message', root_url: root_url)
  end
end
