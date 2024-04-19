import time
import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk

update_time_counter = 0


def update_time():
    """
    This function returns format time
    at the right-top corner. And the
    clock will change per second
    :return:
    """
    global current_time_label, update_time_counter
    # global current_time_label
    print('Update clock in function page current time label...')
    update_current_time = time.strftime('%Y-%m-%d %a %H:%M:%S')
    current_time_label.configure(text=update_current_time)
    root.after(1000, update_time)
    update_time_counter += 1
    if update_time_counter == 1:
        print('Update successfully', update_time_counter, 'time')
    else:
        print('Update successfully', update_time_counter, 'times')


def function_page_button_click(self, button_id):
    """
    This function returns the operation of
    given button_id. If button_id = 1, then
    start the log in page. And if button_id = 2,
    then quit programme and kill the thread
    :param self:
    :param button_id:
    :return:
    """
    if button_id == 1:
        """
        This line is very important. It's key to avoid an error below.
        invalid command name "40306856update_time"
            while executing
        "40306856update_time"
            ("after" script)
        """
        root.after_cancel(time_display_on_function_page)
        print('Stop looping Function Page auto-time label')
        self['command'] = root.destroy
    elif button_id == 2:
        print('Quit programme...')
        goodbye_page()


def goodbye_and_exit(self):
    """
    This function returns destroy goodbye page
    and then exit the programme and kill
    the thread
    :param self:
    :return:
    """
    global root
    self['command'] = root.destroy
    exit()


def goodbye_page():
    """
    This function is to show goodbye page with four models,
    morning -> 5:00 - 9:00
    midday -> 9:00 - 16:00
    evening -> 16:00 - 19:00
    night -> 19:00 - 23:59 and 00:00 - 5:00 (+1)
    :return:
    """
    print('Redirect to goodbye page...')
    '''A common reason for this is that you have multiple Tk instances in your application. If you create a 
    PhotoImage under one Tk instance, you cannot access it from other instances. To fix this, make sure you only use 
    one Tk instance (use Toplevel() to create new Toplevel() windows), or make sure that you create the image under the 
    same instance as the widget you're going to use it in. the easiest way to do is like the following'''
    goodbye_interface = tk.Toplevel()
    goodbye_interface.title('Timer to Berkeley')
    print('Goodbye page launches successfully!')
    # goodbye_button = tk.Button(goodbye_interface, text='Good Bye', command=lambda: goodbye_and_exit(
    # goodbye_interface))
    GOODBYE_PAGE_HEIGHT = root.winfo_screenheight() * 0.95
    print('Initialize good bye page default height')
    GOODBYE_PAGE_WIDTH = goodbye_interface.winfo_screenwidth() * 0.95
    print('Initialize good bye page default width')
    goodbye_canvas = tk.Canvas(goodbye_interface, height=GOODBYE_PAGE_HEIGHT, width=GOODBYE_PAGE_WIDTH)
    goodbye_canvas.pack(fill=None)
    goodbye_page_time = time.strftime('%H')
    # goodbye_page_time = '12'
    print('Quit programme start time', time.asctime())
    # print(int(goodbye_page_time))
    if 16 < int(goodbye_page_time) <= 19:
        print('Goodbye page evening image opening...')
        goodbye_photo_evening = Image.open('UC_Berkeley_goodbye_evening.jpg')
        goodbye_image_evening = ImageTk.PhotoImage(goodbye_photo_evening)
        goodbye_page_label = tk.Label(goodbye_interface, image=goodbye_image_evening)
        goodbye_page_label.place(relwidth=1, relheight=1)
        print('Goodbye page evening image opens successfully!')
    elif 0 <= int(goodbye_page_time) <= 5 or 19 < int(goodbye_page_time) <= 23:
        print('Goodbye page night image opening...')
        goodbye_photo_night = Image.open('UC_Berkeley_goodbye_night.jpg')
        goodbye_image_night = ImageTk.PhotoImage(goodbye_photo_night)
        goodbye_page_label = tk.Label(goodbye_interface, image=goodbye_image_night)
        goodbye_page_label.place(relwidth=1, relheight=1)
        print('Goodbye page night image opens successfully!')
    elif 5 < int(goodbye_page_time) <= 9:
        print('Goodbye page morning image opening...')
        goodbye_photo_morning = Image.open('UC_Berkeley_goodbye_morning.jpg')
        goodbye_image_morning = ImageTk.PhotoImage(goodbye_photo_morning)
        goodbye_page_label = tk.Label(goodbye_interface, image=goodbye_image_morning)
        goodbye_page_label.place(relwidth=1, relheight=1)
        print('Goodbye page morning image opens successfully!')
    elif 9 < int(goodbye_page_time) <= 16:
        print('Goodbye page midday image opening...')
        goodbye_photo_midday = Image.open('UC_Berkeley_goodbye_midday.jpg')
        goodbye_image_midday = ImageTk.PhotoImage(goodbye_photo_midday)
        goodbye_page_label = tk.Label(goodbye_interface, image=goodbye_image_midday)
        goodbye_page_label.place(relwidth=1, relheight=1)
        print('Goodbye page midday image opens successfully!')
    goodbye_button = tk.Button(goodbye_interface, text='Good Bye', command=goodbye_interface.quit)
    print('Goodbye Button triggers successfully!')
    goodbye_button.place(relx=0.48, rely=0.95)
    goodbye_interface.mainloop()
    print('Quit programme successfully!')
    print('Programme quits at', time.asctime())
    print('See you next time! :)')
    exit()


LOADING_PAGE_HEIGHT = 500  # define the height
print('Initialize loading page default height')
LOADING_PAGE_WIDTH = 650  # define the width
print('Initialize loading page default width')

# Create a window
print('Creating loading page...')
loading = tk.Tk()
loading.title('Timer to Berkeley')
print('Loading page launches successfully!')

# Create a canvas
loading_canvas = tk.Canvas(loading, height=LOADING_PAGE_HEIGHT, width=LOADING_PAGE_WIDTH)
loading_canvas.pack(fill=None)

print('Loading page UCB logo image opening...')
loading_photo = Image.open('UCB_logo.jpg')
background_image = ImageTk.PhotoImage(loading_photo)
background_label = tk.Label(loading, image=background_image)
background_label.place(relwidth=1, relheight=1)
print('Loading page UCB logo image opens successfully!')

start_page_button = tk.Button(loading, text='Click to start your UC Berkeley Timer', command=loading.destroy)
start_page_button.place(relx=0.4, rely=0.94)

loading.mainloop()
time.sleep(0.5)
print('Redirect to function page...')

# redirect to function page (start / quit)
FUNCTION_PAGE_HEIGHT = 650  # define the height
print('Initialize function page default height')
FUNCTION_PAGE_WIDTH = 1000  # define the width
print('Initialize function page default width')

# counter = 0
# # # for i in dir(tk):
# # #     counter += 1
# # # print(counter)

# Create a window
root = tk.Tk()
root.title('Timer to Berkeley')
# root.geometry("600x480")  # x represent * here
print('Function page launches successfully!')

# Create a canvas
canvas = tk.Canvas(root, height=FUNCTION_PAGE_HEIGHT, width=FUNCTION_PAGE_WIDTH)
canvas.pack(fill=None)

print('Function page UC Berkeley image opening...')
download_photo = Image.open('UC_Berkeley.jpg')
background_image = ImageTk.PhotoImage(download_photo)
background_label = tk.Label(root, image=background_image)
background_label.place(relwidth=1, relheight=1)
print('Function page UC Berkeley image opens successfully!')

# Create a frame which is inside the window border
# frame = tk.Frame(root, bg='#ff99cc')
# frame = tk.Frame(root)
# frame.place(relx=0.25, rely=0.25, relwidth=0.5, relheight=0.5)

# Create a greeting label
label_greeting = tk.Label(root, text='Welcome to\n Timer to Berkeley', font=40, bg='#ffe6cc')
label_greeting.place(relx=0.36, rely=0, relwidth=0.28, relheight=0.09)
# label_greeting.pack(fill='x')

# Create a current time label
current_time = time.strftime('%Y-%m-%d %a %H:%M:%S')
current_time_label = tk.Label(root, text=current_time, bg='#ffe6cc')
current_time_label.place(relx=0.75, rely=0, relheight=0.09)
if root.winfo_exists():
    print('Function page exists. Continue updating time...')
    time_display_on_function_page = root.after(1000, update_time)

# Create an Entry to input something
entry_test = tk.Entry(root, bg='green')
entry_test.place(relx=0.35, rely=0.4, relwidth=0.3)
# entry_test.pack()

# Create a start button
button_start = tk.Button(root, text='Start', bd='1', bg='DeepSkyBlue', fg='FireBrick',
                         command=lambda: function_page_button_click(button_start, 1))
button_start.place(relx=0.4, rely=0.5)
# button_start.pack(side='left')
# button_start.place(x=50, y=50)

# Create an Exit button
# This is a bug because if click Quit button, it still continue (try to find a function exit programme)
button_exit = tk.Button(root, text='Quit', bd='1', bg='DimGray', fg='black',
                        command=lambda: function_page_button_click(button_exit, 2))
button_exit.place(relx=0.55, rely=0.5)
# button_exit.pack(side='left')

root.mainloop()
time.sleep(0.5)

print('Redirect to start log in page...')
# Create a log in page
log_in = tk.Tk()
log_in.title('Log in - Timer to Berkeley')
print('Log in page launches successfully!')

LOG_IN_HEIGHT = 300
print('Initialize log in page default height')
LOG_IN_WIDTH = 400
print('Initialize log in page default width')

# Create a canvas in log in page
log_in_canvas = tk.Canvas(log_in, height=LOG_IN_HEIGHT, width=LOG_IN_WIDTH)
log_in_canvas.pack(fill=None)

# Create a background image - logo
print('Login page UC Berkeley logo image opening...')
log_in_photo = Image.open('UCB_logo_Login.jpg')
log_in_image = ImageTk.PhotoImage(log_in_photo)
log_in_logo_label = tk.Label(log_in_canvas, image=log_in_image)
log_in_logo_label.place(relx=0.1, rely=0.1)
print('Login page UC Berkeley logo image opens successfully!')


def username_valid_command():
    """
    This function checks the validation of username input
    If it is invalid, throw a waring label and return false
    Otherwise, hide the warning label and return true
    :return:
    """
    print('Validating username...')
    global username_entry_notice_label
    if log_in_username_entry.get() != '':
        username_entry_notice_label = tk.Label(log_in_canvas, text='username cannot be empty', fg='white')
        username_entry_notice_label.place(relx=0.3, rely=0.35)
        print('Username is not None!')
        # if username_entry_notice_label.winfo_exists():
        #     username_entry_notice_label.place_forget()
        # tk.messagebox.showerror('Username valid input', 'Please input your password')
        return True
    if log_in_username_entry.get() == '':
        return False


def username_invalid_command():
    """
    This function runs while username_valid_command() return false
    It will throw a warning label to get correct and valid username
    And return true
    :return:
    """
    print('ERROR: invalid username!!')
    global username_entry_notice_label
    if log_in_username_entry.get() == '':
        username_entry_notice_label = tk.Label(log_in_canvas, text='username cannot be empty', fg='red')
        username_entry_notice_label.place(relx=0.3, rely=0.35)
        print('NOTICE to validate username launches successfully!')
        return True


def password_valid_command():
    """
    This function checks the validation of password input
    If it is invalid, throw a waring label and return false
    Otherwise, hide the warning label and return true
    :return:
    """
    print('Validating password...')
    global password_entry_notice_label
    if log_in_password_entry.get() != '':
        password_entry_notice_label = tk.Label(log_in_canvas, text='password cannot be empty', fg='white')
        password_entry_notice_label.place(relx=0.3, rely=0.35)
        print('Password is not None')
        return True
    if log_in_password_entry.get() == '':
        return False


def password_invalid_command():
    """
    This function runs while password_valid_command() return false
    It will throw a warning label to get correct and valid password
    And return true
    :return:
    """
    print('ERROR: invalid password!!')
    global password_entry_notice_label
    if log_in_password_entry.get() == '':
        password_entry_notice_label = tk.Label(log_in_canvas, text='password cannot be empty', fg='red')
        password_entry_notice_label.place(relx=0.3, rely=0.35)
        print('NOTICE to validate password launches successfully!')
        return True


# Create username entry notice label and if detects an invalid username, show it
username_entry_notice_label = tk.Label(log_in_canvas, text='', fg='HotPink')
username_entry_notice_label.place(relx=0.3, rely=0.55)

# Create password entry notice label and if detects an invalid password, show it
password_entry_notice_label = tk.Label(log_in_canvas, text='', fg='red')
password_entry_notice_label.place(relx=0.3, rely=0.55)

# Create username label
log_in_username_label = tk.Label(log_in_canvas, text='Username:')
log_in_username_label.place(relx=0.25, rely=0.45)

# Create username entry
log_in_username_entry = tk.Entry(log_in_canvas, font=40, insertbackground='HotPink', validate='focusout',
                                 validatecommand=username_valid_command, invalidcommand=username_invalid_command)
log_in_username_entry.place(relx=0.45, rely=0.45, relheight=0.1, relwidth=0.3)
print(log_in_username_entry.get())

# Create password label
log_in_password_label = tk.Label(log_in_canvas, text='Password:')
log_in_password_label.place(relx=0.25, rely=0.6)

# Create password entry
log_in_password_entry = tk.Entry(log_in_canvas, font=40, show='*', insertbackground='red', validate='focusout',
                                 validatecommand=password_valid_command, invalidcommand=password_invalid_command)
log_in_password_entry.place(relx=0.45, rely=0.6, relheight=0.1, relwidth=0.3)

password_db = {
    'Stefan': 'asdf',
    'Elizabeth': 'asdfasdf',
    '苏小妹': '330169'
}


def log_in_verify(username_entry, password_entry):
    """
    This function is to get the username and password.
    And then match them with database. Here, password_db
    is database.
    And the log in page will be destroyed if information
    matches. Otherwise, continue input or click Skip
    button

    Besides, this function will be modified using
    a real database.
    :param username_entry:
    :param password_entry:
    :return:
    """
    print('Start login authentication...')
    print('Username', username_entry)
    print('Password', password_entry)
    username_list = []
    for name in password_db:
        username_list.append(name)

    # if username_entry is None:
    #     username_entry_notice_label = tk.Label(log_in_canvas, text='username cannot be empty', fg='red')
    #     username_entry_notice_label.place(relx=0.8, rely=0.45)
    global password_entry_notice_label
    if log_in_password_entry.get() == '':
        password_entry_notice_label = tk.Label(log_in_canvas, text='password cannot be empty', fg='red')
        password_entry_notice_label.place(relx=0.3, rely=0.35)
        print('NOTICE to validate password launches successfully!')
    else:
        password_entry_notice_label = tk.Label(log_in_canvas, text='password cannot be empty', fg='white')
        password_entry_notice_label.place(relx=0.3, rely=0.35)

    if username_entry not in username_list:
        print('Sorry', username_entry, ', you are not a registered user!')
        tk.messagebox.showwarning('Log in Error', 'You are not a valid user!\n Please try skip login')

    if username_entry in username_list and password_entry != password_db.get(username_entry):
        print(f'ERROR: {username_entry}\'s password doesn\'t match!!')
        tk.messagebox.showerror('Log in ERROR', 'Password Wrong!\nPlease input again')

    if username_entry in username_list and password_entry == password_db.get(username_entry):
        # tk.messagebox.showinfo('Log in info', 'You are a valid user!\n Log in')
        print('Username is valid!')
        print('Password is valid!')
        print(f'Authentication successful! Welcome {username_entry}!')
        log_in.destroy()


def skip_log_in():
    """
    This function is to destroy log in page
    while click Skip button
    :return:
    """
    print('Launching Skip log in button...')
    log_in.destroy()
    print('Skip button triggers successfully!')


# Create a login button
log_in_button = tk.Button(log_in_canvas, text='Login',
                          command=lambda: log_in_verify(log_in_username_entry.get(), log_in_password_entry.get()))
log_in_button.place(relx=0.4, rely=0.75, relheight=0.1, relwidth=0.2)

# Create a skip log in button
log_in_skip_button = tk.Button(log_in_canvas, text='Skip', command=skip_log_in)
log_in_skip_button.place(relx=0.9, rely=0.9)

log_in.mainloop()
time.sleep(0.5)
print('Redirect to spining load page...')


