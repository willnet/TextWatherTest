# coding: utf-8
class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    layout = Android::Widget::LinearLayout.new(self)
    field = Android::Widget::EditText.new(self)
    field.addTextChangedListener(self)
    layout.addView(field)
    self.contentView = layout
  end

  def beforeTextChanged(s, start, count, after)
    puts 'before'
  end

  def afterTextChanged(editable)
    puts 'after'
  end

  def onTextChanged(s, start, before, count)
    puts 'on'
  end
end
