require 'dotenv/load'
require 'httparty'
require 'json'
require 'fileutils'
require 'find'

module CodeDocAI
  module_function

  def generate(path = "./app")
    read_path(path)
    generate_index
  end

  # Dispatcher: decides whether it's a file or directory
  def read_path(path)
    if File.file?(path) && File.extname(path) == ".rb"
      read_single_file(path, path)
    elsif File.directory?(path)
      puts "📁 Searching recursively in: #{path}"
      Dir.glob("#{path}/**/*.rb").each do |file|
        next unless File.file?(file)
        read_single_file(file, path)
      end
    else
      puts "❌ Not a Ruby file or directory: #{path}"
    end
  end

  # Handles a single Ruby file
  def read_single_file(file_path, base_path)
    puts "\n📄 Reading: #{file_path}"

    code = File.read(file_path)
    markdown = hit_ai(code)

    save_response(file_path, base_path, markdown)
  end

  # Sends code to OpenAI and gets markdown response
  def hit_ai(code)
    prompt = File.read("prompt.txt") + code
    puts prompt

    response = HTTParty.post(
      "https://api.openai.com/v1/chat/completions",
      headers: {
        "Authorization" => "Bearer #{ENV["OPENAI_API_KEY"]}",
        "Content-Type" => "application/json"
      },
      body: {
        model: "gpt-3.5-turbo",
        messages: [
          { role: "user", content: "Write a markdown explanation of this:\n" + prompt }
        ],
        temperature: 0.7
      }.to_json
    )

    response.dig("choices", 0, "message", "content")
  end

  # Saves markdown to app_doc/ with same folder structure
  def save_response(original_file_path, base_path, markdown)
    relative_path = original_file_path.sub(%r{^#{Regexp.escape(base_path)}/?}, "")
    target_md_path = File.join("app_doc", relative_path.sub(/\.rb$/, ".md"))

    output_dir = File.dirname(File.join(__dir__, target_md_path))
    FileUtils.mkdir_p(output_dir)

    File.write(File.join(__dir__, target_md_path), markdown)
    puts "✅ Markdown saved to: #{target_md_path}"
  end

  # ✅ Generate an read.md file listing all .md files in app_doc/
  def generate_index
    output_dir = File.join(__dir__, "app_doc")
    index_file = File.join(__dir__, "read.md")

    lines = ["# 📚 Documentation Index\n\n"]

    Find.find(output_dir) do |path|
      next unless File.file?(path)
      next if path.end_with?("read.md")
      next unless File.extname(path) == ".md"

      relative_path = path.sub("#{output_dir}/", '')
      lines << "- [#{relative_path}](#{relative_path})"
    end

    File.write(index_file, lines.join("\n"))
    puts "✅ read.md generated at: #{index_file}"
  end
end

# Run when called directly
if __FILE__ == $0
  CodeDocAI.generate
end
