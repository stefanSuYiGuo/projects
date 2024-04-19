import tkinter as tk
from tkinter import ttk
import time
import datetime
import random

checkbutton_counter = 0
# start_time = time.strftime('%H %M %S')
start_time = datetime.datetime.now()
# print(start_time.second)
print('Start time', time.strftime('%Y-%m-%d %a %H:%M:%S'))


# end_time = datetime.datetime.now()
# print(end_time.second)
# print((end_time - start_time).seconds)


def update_time():
    global root_auto_time_label
    update_current_time = time.strftime('%Y-%m-%d %a %H:%M:%S')
    root_auto_time_label.configure(text=update_current_time)
    root.after(1000, update_time)


def get_date(text):
    date = ''
    for char in text:
        if char.isdigit():
            date += char
    day = int(date) % 100
    return day


def display(self):
    global checkbutton_counter
    if get_date(self['text']) < int(time.strftime('%d')):
        self['state'] = 'disabled'
        checkbutton_counter += 1
    else:
        self['state'] = 'normal'

    if self['state'] == 'disabled':
        print('text:', self['text'])
        print('state:', self['state'])
        print('checkbutton counter:', checkbutton_counter)


def click_checkbutton(self):
    global checkbutton_counter, progress_label_notice_text, progress_label_notice
    print('text:', self['text'])
    print('state:', self['state'])
    end_time = datetime.datetime.now()
    date = ''
    for char in self['text']:
        if char.isdigit():
            date += char
    if date != '':
        if 0 < int(int(date) / 100) <= 12:
            day = int(date) % 100
        else:
            day = int(date) % 10
        if day == int(time.strftime('%d')):
            if self['state'] == 'normal':
                self['state'] = 'disable'
                checkbutton_counter += 1
                progress_bar.step(checkbutton_counter / 20 * 100)
                print('checkbutton counter:', checkbutton_counter)
                print('progress bar:', checkbutton_counter / 20 * 100, '%')
                print('End time', time.strftime('%Y-%m-%d %a %H:%M:%S'))
                use_time_seconds = (end_time - start_time).seconds
                if use_time_seconds <= 22 * 60:
                    random_jujube = random.randint(0, 10)
                    use_time = '恭喜你在' + str(int(use_time_seconds / 60)) + '分' + str(
                        int(use_time_seconds % 60)) + '秒内完成挑战！\n打卡成功！\n获得红枣奖励' + str(
                        random_jujube) + '颗\n并从母上大人那里获取1元奖励'
                    congratulation_label = tk.Label(root_canvas, text=use_time, bg='HotPink')
                    congratulation_label.place(relx=0.35, rely=0.6)
                    quit_button = tk.Button(root_canvas, text='开心退出', command=root.destroy, bg='HotPink', bd=0,
                                            activeforeground='Gold', highlightcolor='cyan', fg='cyan')
                    quit_button.place(relx=0.45, rely=0.9)
                    progress_label_notice_text = str(checkbutton_counter / 20 * 100) + '%'
                    progress_label_notice = tk.Label(root_canvas, text=progress_label_notice_text, bg='HotPink')
                    progress_label_notice.place(relx=0.7, rely=0.79)
                elif 22 * 60 < use_time_seconds <= 30 * 60:
                    random_jujube = random.randint(0, 10)
                    use_time = '用时' + str(int(use_time_seconds / 60)) + '分' + str(
                        int(use_time_seconds % 60)) + '秒\n打卡成功！\n获得红枣奖励' + str(random_jujube) + '颗'
                    congratulation_label = tk.Label(root_canvas, text=use_time, bg='HotPink')
                    congratulation_label.place(relx=0.35, rely=0.6)
                    quit_button = tk.Button(root_canvas, text='平静退出', command=root.destroy, bg='HotPink', bd=0,
                                            activeforeground='Gold', highlightcolor='cyan', fg='cyan')
                    quit_button.place(relx=0.45, rely=0.9)
                    progress_label_notice_text = str(checkbutton_counter / 20 * 100) + '%'
                    progress_label_notice = tk.Label(root_canvas, text=progress_label_notice_text, bg='HotPink')
                    progress_label_notice.place(relx=0.7, rely=0.79)
                else:
                    use_time = '用时' + str(int(use_time_seconds / 60)) + '分' + str(
                        int(use_time_seconds % 60)) + '秒\n用时过长 系统自动打卡\n取消红枣奖励\n请下次加快速度 并大声读出奥利给！'
                    congratulation_label = tk.Label(root_canvas, text=use_time, bg='HotPink')
                    congratulation_label.place(relx=0.35, rely=0.6)
                    quit_button = tk.Button(root_canvas, text='伤心退出', command=root.destroy, bg='HotPink', bd=0,
                                            activeforeground='Gold', highlightcolor='cyan', fg='cyan')
                    quit_button.place(relx=0.45, rely=0.9)
                    progress_label_notice_text = str(checkbutton_counter / 20 * 100) + '%'
                    progress_label_notice = tk.Label(root_canvas, text=progress_label_notice_text, bg='HotPink')
                    progress_label_notice.place(relx=0.7, rely=0.79)


root = tk.Tk()
root.title('每日化学打卡')
root.iconbitmap('chemistry.ico')

# ROOT_WIDTH = root.winfo_screenwidth() * 1.2
# ROOT_HEIGHT = root.winfo_screenheight() * 1.2
ROOT_WIDTH = 600
ROOT_HEIGHT = 400

root_canvas = tk.Canvas(root, width=ROOT_WIDTH, height=ROOT_HEIGHT, bg='HotPink', bd=0)
root_canvas.pack()

current_time = time.asctime()
root_auto_time_label = tk.Label(root_canvas, text=current_time, bg='HotPink', font=40)
root_auto_time_label.place(relx=0, rely=0, relheight=0.1, relwidth=1)

root.after(100, update_time)

# status1 = tk.IntVar()
# print(status1.get())
# test
# root_checkbutton_0 = tk.Checkbutton(root_canvas, text='3月12日', bg='HotPink', activebackground='HotPink',
#                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_0))
# root_checkbutton_0.place(relx=0.45, rely=0.15)
# if get_date(root_checkbutton_0['text']) < int(time.strftime('%d')):
#     root_checkbutton_0['state'] = 'disabled'
# display(root_checkbutton_0)

root_checkbutton_1 = tk.Checkbutton(root_canvas, text='3月13日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_1))
root_checkbutton_1.place(relx=0.05, rely=0.2)
display(root_checkbutton_1)

root_checkbutton_2 = tk.Checkbutton(root_canvas, text='3月14日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_2))
root_checkbutton_2.place(relx=0.20, rely=0.2)
display(root_checkbutton_2)

root_checkbutton_3 = tk.Checkbutton(root_canvas, text='3月15日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_3))
root_checkbutton_3.place(relx=0.35, rely=0.2)
display(root_checkbutton_3)

root_checkbutton_4 = tk.Checkbutton(root_canvas, text='3月16日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_4))
root_checkbutton_4.place(relx=0.5, rely=0.2)
display(root_checkbutton_4)

root_checkbutton_5 = tk.Checkbutton(root_canvas, text='3月17日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_5))
root_checkbutton_5.place(relx=0.65, rely=0.2)
display(root_checkbutton_5)

root_checkbutton_6 = tk.Checkbutton(root_canvas, text='3月18日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_6))
root_checkbutton_6.place(relx=0.05, rely=0.3)
display(root_checkbutton_6)

root_checkbutton_7 = tk.Checkbutton(root_canvas, text='3月19日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_7))
root_checkbutton_7.place(relx=0.2, rely=0.3)
display(root_checkbutton_7)

root_checkbutton_8 = tk.Checkbutton(root_canvas, text='3月20日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_8))
root_checkbutton_8.place(relx=0.35, rely=0.3)
display(root_checkbutton_8)

root_checkbutton_9 = tk.Checkbutton(root_canvas, text='3月21日', bg='HotPink', activebackground='HotPink',
                                    activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_9))
root_checkbutton_9.place(relx=0.5, rely=0.3)
display(root_checkbutton_9)

root_checkbutton_10 = tk.Checkbutton(root_canvas, text='3月22日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_10))
root_checkbutton_10.place(relx=0.65, rely=0.3)
display(root_checkbutton_10)

root_checkbutton_11 = tk.Checkbutton(root_canvas, text='3月23日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_11))
root_checkbutton_11.place(relx=0.05, rely=0.4)
display(root_checkbutton_11)

root_checkbutton_12 = tk.Checkbutton(root_canvas, text='3月24日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_12))
root_checkbutton_12.place(relx=0.20, rely=0.4)
display(root_checkbutton_12)

root_checkbutton_13 = tk.Checkbutton(root_canvas, text='3月25日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_13))
root_checkbutton_13.place(relx=0.35, rely=0.4)
display(root_checkbutton_13)

root_checkbutton_14 = tk.Checkbutton(root_canvas, text='3月26日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_14))
root_checkbutton_14.place(relx=0.50, rely=0.4)
display(root_checkbutton_14)

root_checkbutton_15 = tk.Checkbutton(root_canvas, text='3月27日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_15))
root_checkbutton_15.place(relx=0.65, rely=0.4)
display(root_checkbutton_15)

root_checkbutton_16 = tk.Checkbutton(root_canvas, text='3月28日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_16))
root_checkbutton_16.place(relx=0.05, rely=0.5)
display(root_checkbutton_16)

root_checkbutton_17 = tk.Checkbutton(root_canvas, text='3月29日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_17))
root_checkbutton_17.place(relx=0.20, rely=0.5)
display(root_checkbutton_17)

root_checkbutton_18 = tk.Checkbutton(root_canvas, text='3月30日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_18))
root_checkbutton_18.place(relx=0.35, rely=0.5)
display(root_checkbutton_18)

root_checkbutton_19 = tk.Checkbutton(root_canvas, text='3月31日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_19))
root_checkbutton_19.place(relx=0.50, rely=0.5)
display(root_checkbutton_19)

root_checkbutton_20 = tk.Checkbutton(root_canvas, text='4月1日', bg='HotPink', activebackground='HotPink',
                                     activeforeground='Gold', command=lambda: click_checkbutton(root_checkbutton_20))
root_checkbutton_20.place(relx=0.65, rely=0.5)
# display(root_checkbutton_20)

progress_label = tk.Label(root_canvas, text='当前进度', bg='HotPink')
progress_label.place(relx=0.1, rely=0.79)

s = ttk.Style()
s.theme_use('clam')
# style.configure("bar.Horizontal.TProgressbar", troughcolor=TROUGH_COLOR, bordercolor=TROUGH_COLOR,
# background=BAR_COLOR, lightcolor=BAR_COLOR, darkcolor=BAR_COLOR)
s.configure("red.Horizontal.TProgressbar", background='#66ffff', bordercolor='Gold', troughcolor='HotPink')
progress_bar = ttk.Progressbar(root_canvas, length=300, orient='horizontal', style='red.Horizontal.TProgressbar')
progress_bar.place(relx=0.2, rely=0.8)
progress_bar.step(checkbutton_counter / 20 * 100)

progress_label_notice_text = str(checkbutton_counter / 20 * 100) + '%'
progress_label_notice = tk.Label(root_canvas, text=progress_label_notice_text, bg='HotPink')
progress_label_notice.place(relx=0.7, rely=0.79)

root.mainloop()
