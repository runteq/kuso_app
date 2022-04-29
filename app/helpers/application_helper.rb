module ApplicationHelper
  def default_meta_tags
    {
      site: 'クソアプリweek',
      title: 'クソアプリweek',
      reverse: true,
      separator: '|',
      description: 'エンジニア経験不問！実用性なくてOK！とりあえず動けばOK！みんなで楽しくクソアプリを作ろう！',
      keywords: 'クソアプリ',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('rantekun_fabi.png') },
        { href: image_url('rantekun_icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'クソアプリweek',
        title: 'クソアプリweek',
        description: 'エンジニア経験不問！実用性なくてOK！とりあえず動けばOK！みんなで楽しくクソアプリを作ろう！', 
        type: 'website',
        url: request.original_url,
        image: image_url('kusoapp_ogp'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@_RUNTEQ_',
      }
    }
  end
end
