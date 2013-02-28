require 'test_helper'
class CompassRailsTest < Compass::Rails::TestCase
  test "classes are loaded" do
    assert_kind_of Module, Compass::Rails
    assert_kind_of Class, Compass::Rails::Railtie
  end

  def test_rails_app_created
    within_rails_app('compass_rails_project') do |project|
      assert project.boots?
    end
  end

  def test_installs_compass
    within_rails_app('compass_rails_project') do |project|
      project.run_compass('init')
      assert project.has_config?
      assert project.has_screen_file?
      assert project.has_compass_import?
    end
  end

  def test_compass_compile
    within_rails_app('compass_rails_project') do |project|
      project.run_compass('init')
      project.run_compass('compile')
      assert project.directory.join('public/assets/screen.css').exist?
    end
  end

  def test_install_blueprint
    within_rails_app('compass_rails_project') do |project|
      project.run_compass('init')
      project.run_compass('install blueprint --force')
      assert project.directory.join('app/assets/stylesheets/partials').directory?
    end
  end

  def test_compass_preferred_syntax
    within_rails_app('compass_rails_project') do |project|
      project.set_rails('sass.preferred_syntax', :sass)
      project.run_compass('init')
      assert project.directory.join('app/assets/stylesheets/screen.css.sass').exist?
    end
  end
end
