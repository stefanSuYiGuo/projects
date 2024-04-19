# Natural Language Conversation for IoT

*Author: Stefan SU (UIC)*  
*Supervisor: Prof. Weifeng SU (UIC Professor & Programme Director of AIDM)*
*Create Time: 2022-05-10*  

[TOC]

## Version Control
<table>
	<tr>
		<th style="width: 6%; text-align: center; vertical-align: middle; width: 15%;">Version</th>
		<th style="width: 26%; text-align: center; vertical-align: middle;">Revised By</th>
		<th style="width: 16%; text-align: center; vertical-align: middle;">Record Time</th>
	</tr>
	<tr>
		<td style="text-align: center; vertical-align: middle;"><code>2022-05-10</code></td>
		<td style="text-align: center; vertical-align: middle;">Stefan SU (UIC)</td>
		<td style="text-align: center; vertical-align: middle;">2022-05-10 20:23:55</td>
	</tr>
</table>



## Project Description
> <p style="font-size: 18px;">该项目是由<b>UIC</b> 教授<b style="color: #60e8f7;">Weifeng SU 苏伟峰</b>指导， <b>UIC</b> 2018级学生<b style="color: #60e8f7;">Stefan SU 苏义国</b>为路灯项目开发的语音控制系统。旨在给用户语音控制服务。</p>

> The project is a voice control system  developed by the <b><span style="color: #60e8f7;">UIC 2018 student Stefan SU 苏义国</span></b> for the <b><span style="color: #60e8f7;">Street Light</span></b> project. Designed to give users voice control services.
> This project is guided by <b><span style="color: #60e8f7;">UIC professor Weifeng SU 苏伟峰</span></b>, and <b><span style="color: #60e8f7;">UIC 2018 student Stefan SU 苏义国</span></b> developed a voice control system for the street lamp project. Designed to give users voice control services.


## Setup Project
1. 用IDE如PyCharm打开该项目文件夹
2. 做一些Flask项目基本配置（如图所示）![Flask Configuration](E:\Moses\College_Life\Year4_2\Campus_Staff\FYP_II\FYP_II\Flask Configuration.png)

3. `python api.py`


## Git
1. `git add .`
2. `git commit -m "commit message"`
3. `git push origin your_branch_name`


## Others
1. 获取项目所需的所有依赖包以及版本 `python -m pip freeze > requirements.txt` 或 `python3 -m pip freeze > requirements.txt`
2. 在当前环境，导入依赖包 `python -m pip install -r requirements.txt` 或 `python3 -m pip install -r requirements.txt`
3. 生成 HTML 格式的官方帮助文档 `python -m pydoc -p port_number_you_want`
4. 访问执行目录 (working directory) 下的内容 `python -m http.server port_number_you_want`