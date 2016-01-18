class Post < ActiveRecord::Base
    
    def formatted_name
        "Alan Davis"
    end
    
    def formatted_fulltext
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, fenced_code_blocks: true)
        markdown.render(fulltext)
    end
end
