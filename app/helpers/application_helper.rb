module ApplicationHelper
  def root_url
    I18n.t('helpers.root_url')
  end

  def share_link
    'https://twitter.com/home?status=' + share_message
  end

  def share_message
    I18n.t('helpers.sharing_message', root_url: root_url)
  end
end
