require "bundler/gem_tasks"

desc 'creates a postgres cluster'
task :create_pg_cluster do
    sh 'pg_ctl init -D vendor/postgresql' unless Dir.exists?('vendor/postgresql')
end
