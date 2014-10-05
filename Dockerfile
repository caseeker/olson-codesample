FROM rails:onbuild
ENV RAILS_ENV production
CMD bundle exec rake assets:precompile
CMD ["rails", "server"]