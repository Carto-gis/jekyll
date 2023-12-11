require 'json'

module Jekyll
  class JupyterNotebookConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext.downcase == '.ipynb'
    end

    def output_ext(ext)
      '.html'
    end

    def convert(content)
      json_content = JSON.parse(content)
      html_output = '<div class="jupyter-notebook">'
      json_content['cells'].each do |cell|
        case cell['cell_type']
        when 'code'
          html_output += "<pre>#{cell['source']}</pre>"
          html_output += "<code>#{cell['outputs'][0]['data']['text/html']}</code>"
        when 'markdown'
          html_output += Kramdown::Document.new(cell['source']).to_html
        end
      end
      html_output += '</div>'
      html_output
    end
  end
end
