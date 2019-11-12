RSpec.describe Myself::Fileutil do

  before do
    @test_dir = "lib/myself"
  end

  it "has a version number" do
    expect(Myself::Fileutil::VERSION).not_to be nil
  end

  it "Myself::Fileutil::ls_test01" do
    file_contents = Myself::Fileutil::ls(@test_dir)
    expect(file_contents.size).to eq(3)
  end

  it "Myself::Fileutil::ls_test02" do
    file_contents = Myself::Fileutil::ls(@test_dir)
    file_count = 0
    file_contents.each do |file_content|
      if File::ftype(file_content) == "file"
        file_count = file_count + 1
      end
    end
    expect(file_count).to eq(2)
  end

  it "Myself::Fileutil::ls_test03" do
    file_contents = Myself::Fileutil::ls(@test_dir)
    dir_count = 0
    file_contents.each do |file_content|
      if File::ftype(file_content) == "directory"
        dir_count = dir_count + 1
      end
    end
    expect(dir_count).to eq(1)
  end

end
