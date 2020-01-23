json.extract! page, :id, :seo_url, :nav_name, :title, :heading, :created_at, :updated_at
json.url page_url(page, format: :json)
