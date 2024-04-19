import time
import datetime
import tkinter as tk


def update_time():
    global window_auto_time_label
    update_current_time = time.strftime('%Y-%m-%d %a %H:%M:%S')
    window_auto_time_label.configure(text=update_current_time)
    window.after(1000, update_time)


start = time.time()

counter = 0
for i in dir(time):
    counter += 1
print(counter)

counter = 0
for i in dir(datetime):
    counter += 1
print(counter)

print(datetime.time())
# help(datetime.date)
now = datetime.datetime.today()
print(now)

print(time.time())
print(time.asctime())
now = time.gmtime()
time.sleep(0.1)

stop = time.time()
print(stop - start)
print("I love you")

window = tk.Tk()
# window.wm_attributes('-topmost', True)
window.title('Auto Timer Display')

HEIGHT = 500
WIDTH = 700

window_canvas = tk.Canvas(window, height=HEIGHT, width=WIDTH)
window_canvas.pack()

current_time = time.asctime()
window_auto_time_label = tk.Label(window, text=current_time, font=40, bg='#ffe6cc')
window_auto_time_label.place(relx=0.25, rely=0.25, relheight=0.45, relwidth=0.45)

window.after(100, update_time)

window_screen_width = window.winfo_screenwidth()
window_screen_height = window.winfo_screenheight()
print(window_screen_width, window_screen_height)
print(window.winfo_exists())

window.mainloop()

password_db = {
    'Stefan': 'asdf',
    'Elizabeth': 'asdfasdf'
}

print(password_db)
name_list = []
for name in password_db:
    print(name)
    print(password_db.get(name))
    name_list.append(name)

print(name_list)

