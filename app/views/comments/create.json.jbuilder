if @comment.persisted?
  # json.form render(partial: "comment_form", formats: :html, locals: {:forum => @forum, :post => @post, :comment => Comment.new})
  json.form render(partial: "comment_form", formats: :html, locals: {:forum => @forum,:post => @post, :comment => Comment.new})
  json.inserted_item render(partial: "comment_list", formats: :html, locals: {:comment => @comment})
else
  # json.form render(partial: "comment_form", formats: :html, locals: {:forum => @forum, :post => @post, :comment => @comment})
  json.form render(partial: "comment_form", formats: :html, locals: {:forum => @forum,:post => @post, :comment => @comment})
end
