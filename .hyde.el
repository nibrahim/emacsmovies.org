(setq hyde/git/remote "origin"
      hyde-deploy-dir "public"
      hyde-posts-dir "source/_posts"
      hyde-drafts-dir "source/_drafts"
      hyde/deploy-command "rvm ruby-1.9.2-p290 exec bundle exec rake rsync"
      hyde/jekyll-command "rvm ruby-1.9.2-p290 exec bundle exec rake generate"
)

