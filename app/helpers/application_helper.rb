module ApplicationHelper

  def mailto_url
    'mailto:hello@quentin-bellanger.fr'
  end

  def author_url
    'http://quentin-bellanger.fr'
  end

  def share_url
    'https://twitter.com/home?status=' + share_message
  end

  def share_message
    I18n.t('helpers.sharing_message', root_url: root_url)
  end
end
