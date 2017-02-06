# Subscription Check

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("subscriptions.db")
db.results_as_hash = true

subs_table = <<-SQL
    CREATE TABLE IF NOT EXISTS subscriptions(
        id INTEGER PRIMARY KEY,
        subscription VARCHAR(255),
        amount INT, 
        notes VARCHAR(255)
    )
SQL

db.execute(subs_table)

def add_sub(db, subscription, amount, notes)
  db.execute("INSERT INTO subscriptions(subscription, amount, notes) VALUES (?, ?, ?)", [subscription, amount, notes])
end

def delete_sub(db, sub)
  db.execute("DELETE FROM subscriptions WHERE subscription =(?) ", [sub])
end

def update_sub_cost(db, sub, cost)
  db.execute("UPDATE subscriptions SET amount = (?) WHERE subscription = (?)", [cost, sub])
end

def update_sub_notes(db, sub, note)
  db.execute("UPDATE subscriptions SET notes = (?) WHERE subscription = (?)", [note, sub])
end

finished = false
until finished 

p "Hi, what would you like to do to your subscriptions?"
p "Please select from the following commands: "
p "add to add a subcription"
p "delete to remove a subscription"
p "update to update a subcription"
p "info to obtain information,"
p "cancel to exit"

input = gets.chomp
if input == 'add'
    p "Please input a subscription you would like to add."
    subscription = gets.chomp
    p "How much are you paying monthly for this subscription?"
    amount = gets.chomp
    p "Are there any notes about this service you are adding?"
    notes = gets.chomp
    add_sub(db, subscription, amount, notes)
elsif input == 'delete'
    p "Please input a subscription you would like to remove."
    remove = gets.chomp
    delete_sub(db, remove)
    p "#{remove} has been removed from your subscriptions"
elsif input == 'update'
    p "Please input the subscription you would like to update."
    sub = gets.chomp
    p "What would you like to update about it? ('amount', 'notes')"
    up = gets.chomp
    if up == "amount"
        p "Input the cost of this subscription"
        cost = gets.chomp
        update_sub_cost(db, sub, cost)
    elsif up == "notes"
        p "Please enter the notes you would like to change for this subscription"
        note = gets.chomp
        update_sub_notes(db, sub, note)
    end
elsif input == 'info'
    subscriptions = db.execute("SELECT * FROM subscriptions")
    total = 0
    subscriptions.each do |subscription|
        total += subscription['amount'].to_f
    end
    done = false
    until done == true
    p "What would you like to know about your subscriptions? ('monthly total', 'size', 'all', 'notes', 'cancel')"
    know = gets.chomp
        if know == "monthly total"
            p "You're subscriptions add up to $#{total}.'"
        elsif know == "size"
            p "You currently have #{subscriptions.size} subscriptions."
        elsif know == "all"
            p "You currently have #{subscriptions.size} subscriptions and you are paying $#{total} monthly."
            p "These are your current subscriptions"
            subscriptions.each do |sub|
                p "#{sub['id']}.#{sub['subscription']} : $#{sub['amount']} (#{sub['notes']})"
            end

        elsif know == "notes"
            p "Which subscription would you like to know about?"
            sub = gets.chomp
            p db.execute("SELECT notes FROM subscriptions WHERE subscription = ?", [sub])
        elsif know == "cancel"
            done = true
        else
            p "Please input a valid command"
        end
    end
elsif input == "cancel"
    p "Exiting program"
    finished = true
else
    p "Please enter a valid command"
end
end

p "Take care..."
