# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ruta::Application.initialize!

  Synthesis::AssetPackage.merge_environments = %w(staging production)
