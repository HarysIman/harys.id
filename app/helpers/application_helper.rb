module ApplicationHelper
  SITE_NAME = "Harys Imanulloh"
  SITE_URL  = "https://harys.id"
  SITE_DESC = "Portofolio personal Harys Imanulloh. Berpikir lambat, proyek kecil, dan beberapa hal yang masih berjalan. Purwokerto, Jawa Tengah."
  DEFAULT_OG_IMAGE = "#{SITE_URL}/icon.png"

  def seo_title(page_title = nil)
    page_title ? "#{page_title} — #{SITE_NAME}" : "#{SITE_NAME} — Portofolio"
  end

  def seo_description(desc = nil)
    (desc.presence || SITE_DESC).truncate(160)
  end

  def canonical_url(path = nil)
    path ? "#{SITE_URL}#{path}" : "#{SITE_URL}#{request.path}"
  end

  def person_schema
    {
      "@context" => "https://schema.org",
      "@type"    => "Person",
      "name"     => "Harys Imanulloh",
      "url"      => SITE_URL,
      "jobTitle" => "Slow Thinker",
      "address"  => {
        "@type"            => "PostalAddress",
        "addressLocality"  => "Purwokerto",
        "addressRegion"    => "Jawa Tengah",
        "addressCountry"   => "ID"
      },
      "sameAs" => [
        "https://instagram.com/harys.id",
        "https://linkedin.com/in/harys-imanulloh"
      ]
    }.to_json.html_safe
  end

  def website_schema
    {
      "@context"        => "https://schema.org",
      "@type"           => "WebSite",
      "name"            => SITE_NAME,
      "url"             => SITE_URL,
      "description"     => SITE_DESC,
      "inLanguage"      => "id-ID"
    }.to_json.html_safe
  end

  def blog_posting_schema(post)
    schema = {
      "@context"         => "https://schema.org",
      "@type"            => "BlogPosting",
      "headline"         => post.title,
      "description"      => seo_description(post.excerpt),
      "url"              => "#{SITE_URL}/blog/#{post.slug}",
      "datePublished"    => post.published_at.iso8601,
      "dateModified"     => post.updated_at.iso8601,
      "inLanguage"       => "id-ID",
      "author" => {
        "@type" => "Person",
        "name"  => "Harys Imanulloh",
        "url"   => SITE_URL
      },
      "publisher" => {
        "@type" => "Person",
        "name"  => "Harys Imanulloh",
        "url"   => SITE_URL
      }
    }

    if post.cover_image.attached?
      schema["image"] = url_for(post.cover_image)
    end

    schema.to_json.html_safe
  end
end
