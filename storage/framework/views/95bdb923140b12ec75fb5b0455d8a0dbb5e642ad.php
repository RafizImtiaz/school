<style>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: yellow;
		}
		
		/* Style for video box */
		.video-box {
			position: relative;
			padding-bottom: 56.25%;
			height: 0;
			overflow: hidden;
			margin: 40px auto;
			max-width: 800px;
			border-radius: 10px;
			box-shadow: 0px 8px 25px rgba(0,0,0,0.3);
		}
		.video-box iframe {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			border-radius: 10px;
		}
		
		/* Style for PDF book list box */
		.pdf-box {
			background-color: #fff;
			padding: 40px 60px;
			border-radius: 10px;
			box-shadow: 0px 8px 25px rgba(0,0,0,0.3);
			margin: 40px auto;
			max-width: 800px;
		}
		.pdf-box h2 {
			margin-top: 0;
			margin-bottom: 40px;
			font-size: 48px;
			color: #333;
			text-align: center;
			text-shadow: 2px 2px 5px rgba(0,0,0,0.1);
		}
		.pdf-box ul {
			list-style-type: none;
			padding: 0;
			margin: 0;
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
		}
		.pdf-box li {
			margin: 20px;
			padding: 40px 30px;
			background-color: #f7f7f7;
			border-radius: 10px;
			box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
			transition: all 0.3s ease;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			text-align: center;
			max-width: 250px;
			min-height: 300px;
			flex-grow: 1;
			flex-basis: 0;
		}
		.pdf-box li:hover {
			transform: translateY(-10px);
			box-shadow: 0px 15px 25px rgba(0,0,0,0.3);
		}
		.pdf-box a {
			text-decoration: none;
			color: #333;
			font-size: 24px;
			font-weight: bold;
			margin-top: 20px;
			padding: 10px 20px;
			background-color: red;
			border-radius: 30px;
			box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
			transition: all 0.3s ease;
		}
		.pdf-box a:hover {
			background-color: #333;
			color: #fff;
			box-shadow: 0px 5px 15px rgba(0,0,0,0.4);
		}
		.pdf-box p {
			font-size: 20px;
		}
	</style>

<div class="mt-8 bg-white rounded">

<div class="video-box">
		<iframe width="560" height="315" src="https://www.youtube.com/watch?v=rn2LxYpSNdE" frameborder="0" allowfullscreen></iframe>
	</div>
	<div class="pdf-box">
		<h2>Study Materials</h2>
		<ul>
			<li><a href="book1.pdf">Bangla </a></li>
			<li><a href="book2.pdf">English</a></li>
			<li><a href="book3.pdf">History of Bangladesh</a></li>
			<li><a href="math.pdf">Math Workbook</a></li>
			<li><a href="science.pdf">Science Fiction</a></li>
			<li><a href="history.pdf">History Workbook</a></li>
			<li><a href="reading.pdf">Reading Comprehension Exercises</a></li>
		</ul>
	</div>
        <div class="w-full max-w-2xl px-6 py-12">

            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Name : 
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="block text-gray-600 font-bold"><?php echo e($student->user->name); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Email :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->user->email); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Roll Number :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->roll_number); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Phone :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->phone); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Gender :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->gender); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Date of Birth :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->dateofbirth); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Current Address :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->current_address); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Permanent Address :
                    </label>
                </div>
                <div class="md:w-2/3">
                    <span class="text-gray-600 font-bold"><?php echo e($student->permanent_address); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Class :
                    </label>
                </div>
                <div class="md:w-2/3 block text-gray-600 font-bold">
                    <span class="text-gray-600 font-bold"><?php echo e($student->class->class_name); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Student Parent :
                    </label>
                </div>
                <div class="md:w-2/3 block text-gray-600 font-bold">
                    <span class="text-gray-600 font-bold"><?php echo e($student->parent->user->name); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Parent Email :
                    </label>
                </div>
                <div class="md:w-2/3 block text-gray-600 font-bold">
                    <span class="text-gray-600 font-bold"><?php echo e($student->parent->user->email); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Parent Phone :
                    </label>
                </div>
                <div class="md:w-2/3 block text-gray-600 font-bold">
                    <span class="text-gray-600 font-bold"><?php echo e($student->parent->phone); ?></span>
                </div>
            </div>
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-1/3">
                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                        Parent Address :
                    </label>
                </div>
                <div class="md:w-2/3 block text-gray-600 font-bold">
                    <span class="text-gray-600 font-bold"><?php echo e($student->parent->current_address); ?></span>
                </div>
            </div>

            <div class="w-full px-0 md:px-6 py-12">
                <div class="flex items-center bg-gray-200">
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Code</div>
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Subject</div>
                    <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">Teacher</div>
                    <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">FeedBacks</div>      
                    <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">Assignments</div>  

                </div>
                <?php $__currentLoopData = $student->class->subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="flex items-center justify-between border border-gray-200 -mb-px">
                        <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->subject_code); ?></div>
                        <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->name); ?></div>
                        <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->teacher->user->name); ?></div>
                        <form>  
<input type="file" name="assignment1"> 
<input type="submit" value="Submit"> </form>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

            <div class="w-full px-0 md:px-6 py-12">
                <div class="flex items-center bg-gray-200">
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Date</div>
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Class</div>
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Teacher</div>
                    <div class="w-1/4 text-right text-gray-600 py-2 px-4 font-semibold">attendance</div>
                </div>
                <?php $__currentLoopData = $student->attendances; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attendance): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="flex items-center justify-between border border-gray-200 -mb-px">
                        <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($attendance->attendence_date); ?></div>
                        <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($attendance->class->class_name); ?></div>
                        <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($attendance->teacher->user->name); ?></div>
                        <div class="w-1/4 text-right text-gray-600 py-2 px-4 font-medium">
                            <?php if($attendance->attendence_status): ?>
                                <span class="text-xs text-white bg-green-500 px-2 py-1 rounded">P</span>
                            <?php else: ?>
                                <span class="text-xs text-white bg-red-500 px-2 py-1 rounded">A</span>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>        
    </div><?php /**PATH C:\xampp\htdocs\school\resources\views/dashboard/student.blade.php ENDPATH**/ ?>