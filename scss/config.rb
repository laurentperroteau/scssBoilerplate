# -----------------------#
# ::: HOW USE SCSS ? ::: #
# -----------------------#

# 1 - Copy "SCSS" folder where you need the "CSS" folder
# 2 - Open commande line in "SCSS" folder (should contain this config.rb)
# 3 - Enter "compass watch"
# 4 - Done
# Notes: if you have a problem, force the config.rb:
#        => compass compile -c config.rb --force

http_path = "/"
css_dir = "../css"
sass_dir = "../scss"
images_dir = "../img"
javascripts_dir = "../js"

# If you need to change "environment":
# => compass compile -e development --force
# => compass compile -e production --force
if environment == :production
  output_style = :compressed
else
  output_style = :expanded
  # sass_options = { :debug_info => true }
end

# Enable relative paths to assets via compass helper functions for sprite:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false