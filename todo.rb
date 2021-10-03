class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def info
    if @tasks == []
      puts '【！】 タスクはありません。'
    else
      @tasks.each do |task|
        puts "【追加】[No.#{task.id}] #{task.title}:#{task.content}"
      end
      puts '*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*'
      @tasks.each do |task|
        puts "[No.#{task.id}] #{task.title}:#{task.content}"
      end
      puts '*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*'
    end
  end

  def delete(id:)
    task = @tasks.find { |task| task.id == id }

    if task.nil?
      puts '【！】 該当idのタスクはありません。'
    else
      @tasks.delete(task)
      puts "【削除】[No.#{task.id}] #{task.title}:#{task.content}"
    end
  end
end
