require "test_helper"


class TvShowTest < ActiveSupport::TestCase
    setup do
        @tv_show = tv_shows(:game_of_thrones)
    end

    test 'valid tv_show' do
        assert @tv_show.valid?
    end

    test 'invalid without name' do
        @tv_show.name = nil
        assert_not @tv_show.valid?
    end

    test 'invalid without summary' do
        @tv_show.summary = nil
    assert_not @tv_show.valid?
    end

    test 'invalid without release_date' do
        @tv_show.release_date = nil
        assert_not @tv_show.valid?
    end

    test 'invalid without rating' do
        @tv_show.rating = nil
        assert_not @tv_show.valid?
    end
end
