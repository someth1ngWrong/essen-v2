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
        image: image_url('https://psv4.userapi.com/c536236/u131788831/docs/d42/cde49a5ba784/og.png?extra=MzJ4KqLtsMICmLNSu-pzOQ8-fBfZtvUs-QlKIu-0udrxTGVdarhtj0nPONqPcFZuGMhDiqg3EFVFjgZWGcl0aQ9Et1NMYoC4yi7S8JxG5sUNjzWRlNh0mlF68WicgJT-aKL334JnfKKmYhr3')
      }
    }
  end
end
