module ApplicationHelper
  def default_meta_tags
    {
      site: 'Essen',
      title: '',
      reverse: true,
      separator: '|',
      description: 'Essen — рецепты, подстраивающиеся под вас',
      keywords: 'hse, art, design',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      # icon: [
      #   { href: image_url('favicon.ico') },
      #   { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      # ],
      og: {
        site_name: 'Essen.eat',
        title: '',
        description: 'Essen — рецепты, подстраивающиеся под вас',
        type: 'website',
        url: request.original_url,
        image: image_url('https://vk.com/doc131788831_600224063?hash=1d862fc1ce7b9543b3&dl=381182cede38d1c727')
      }
    }
  end
end
