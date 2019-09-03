<% obj.each do |article| %>
    <div class="row">
        <div class="col-xs-8 col-xs-offset-2">
            <div class="well well-lg">
                <div class="article-title">
                    <%= link_to  article.title, article_path(article) %>
                </div>
                <div class="article-body">
                    <%= truncate(article.description, length: 100) %>                 
                </div>
                <div class="article-meta-details">
                    <small>Created by: <%= article.user.username  if article.user %>,
                        <%= time_ago_in_words(article.created_at) %> ago,
                        last updated: <%= time_ago_in_words(article.updated_at) %> ago
                    </small>
                </div>  
                <div class="article-actions">
                    <%= link_to  "Edit", edit_article_path(article), class: "btn btn-xs btn-primary" %> 
                    <%= link_to "Delete", article_path(article), method: "delete", data:{ confirm: "Are you sure on delete: #{article.title}?"}, class: "btn btn-xs btn-danger" %> 
                </div>
            </div>
        </div>
    </div>
    <% end %>