#include <iostream>
#include "jni_bench_example_ImageAverage.h"

using namespace std;

JNIEXPORT jint JNICALL Java_jni_1bench_1example_ImageAverage_calculateAverage(JNIEnv *env, jobject thisObject, jobjectArray thisObjectArray) {
    std::cout << "Hello from C++ !!" << std::endl;
}