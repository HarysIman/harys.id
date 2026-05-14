class SitemapController < ApplicationController
  def index
    @posts = Post.published
    @static_pages = [
      { loc: root_url, priority: "1.0", changefreq: "monthly" },
      { loc: posts_url, priority: "0.9", changefreq: "weekly"  }
    ]
    respond_to do |format|
      format.xml { render layout: false }
    end
  end
end
