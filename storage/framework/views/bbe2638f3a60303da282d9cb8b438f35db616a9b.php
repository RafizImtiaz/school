<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(sprintf("%02d", $teacher->classes_count)); ?></span>
                <span class="leading-tight">Classes</span>
            </h3>
        </div>
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 mx-0 sm:mx-6 my-4 sm:my-0 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(sprintf("%02d", $teacher->subjects_count)); ?></span>
                <span class="leading-tight">Subjects</span>
            </h3>
        </div>
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(($teacher->students[0]->students_count) ?? 0); ?></span>
                <span class="leading-tight">Students</span>
            </h3>
        </div>
        <a href="<?php echo e(route('student.index')); ?>" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
            <svg class="h-4 w-4 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-graduate" class="svg-inline--fa fa-user-graduate fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M319.4 320.6L224 416l-95.4-95.4C57.1 323.7 0 382.2 0 454.4v9.6c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-9.6c0-72.2-57.1-130.7-128.6-133.8zM13.6 79.8l6.4 1.5v58.4c-7 4.2-12 11.5-12 20.3 0 8.4 4.6 15.4 11.1 19.7L3.5 242c-1.7 6.9 2.1 14 7.6 14h41.8c5.5 0 9.3-7.1 7.6-14l-15.6-62.3C51.4 175.4 56 168.4 56 160c0-8.8-5-16.1-12-20.3V87.1l66 15.9c-8.6 17.2-14 36.4-14 57 0 70.7 57.3 128 128 128s128-57.3 128-128c0-20.6-5.3-39.8-14-57l96.3-23.2c18.2-4.4 18.2-27.1 0-31.5l-190.4-46c-13-3.1-26.7-3.1-39.7 0L13.6 48.2c-18.1 4.4-18.1 27.2 0 31.6z"></path></svg>
            <span class="ml-2 text-sm font-semibold">Students</span>
        </a>
    </div>
</div>
<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full sm:w-1/2 mr-2 mb-6">
            <h3 class="text-gray-700 uppercase font-bold mb-2">Class List</h3>
            <div class="flex flex-wrap items-center">
                <?php $__currentLoopData = $teacher->classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="w-full sm:w-1/2 text-center border border-gray-200 rounded">
                        <div class="text-gray-800 uppercase font-semibold px-4 py-4 mb-2"><?php echo e($class->class_name); ?></div>
                        <a href="<?php echo e(route('teacher.attendance.create',$class->id)); ?>" class="bg-gray-700 inline-block mb-4 text-xs text-gray-200 uppercase font-semibold px-4 py-2 border border-gray-500 rounded">Attendence</a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
        <div class="w-full sm:w-1/2 ml-2 mb-6">
            <h3 class="text-gray-700 uppercase font-bold mb-2">Subject List</h3>
            <div class="flex items-center bg-gray-200 rounded-tl rounded-tr">
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Code</div>
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Subject</div>
                <a class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Feedbacks</a>
                <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">Teacher</div>
            </div>
            <?php $__currentLoopData = $teacher->subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="flex items-center justify-between border border-gray-200">
    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->subject_code); ?></div>
    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->name); ?></div>
    <div class="w-1/4  items-center justify-end py-2 px-4">
        <input type="text" class="border border-gray-300 rounded-md py-2 px-4 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent" placeholder="Enter your input">
        <button class="ml-4 px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600">Submit</button>
    </div>
    <div class="w-1/4 text-right text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->teacher->user->name); ?></div>
</div>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div> <!-- ./END TEACHER --><?php /**PATH C:\xampp\htdocs\school\resources\views/dashboard/teacher.blade.php ENDPATH**/ ?>