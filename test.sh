# Sample test cases
# 
# This file contains the script to run sample test cases. 
# Please test your code against this script before submitting
# your file by running `make test`.

echo
echo
echo "Running tests..."
echo

echo "......................"
echo "Running test case 1..."

output=$(./a.out Person)
expected_output="Hello, Person!"

if [ $? != 0 ] ; then
    echo "FAIL: Test case 1 failed."
    echo "Program exited with exit code 1"
    exit 1
fi

if [ "$output" == "$expected_output" ] ; then
    echo "PASS: Test case 1 passed"
else
    echo "FAIL: Test case 1 failed."
    echo "Expected $expected_output but got $output"
    exit 1
fi
echo "......................"
echo

echo "......................"
echo "Running test case 2..."

output=$(./a.out students)
expected_output="Hello, students!"

if [ $? != 0 ] ; then
    echo "FAIL: Test case 1 failed."
    echo "Program exited with exit code 1"
    exit 1
fi

if [ "$output" == "$expected_output" ] ; then
    echo "PASS: Test case 1 passed"
else
    echo "FAIL: Test case 1 failed."
    echo "Expected $expected_output but got $output"
    exit 1
fi
echo "......................"
echo

echo
echo "All tests passed"

exit 0