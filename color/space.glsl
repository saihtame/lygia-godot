/*
description: Include all available color spaces conversions
*/

// CMYK
#include "res://space/cmyk2rgb.glsl"
#include "res://space/rgb2cmyk.glsl"

// Gamma
#include "res://space/gamma2linear.glsl"
#include "res://space/linear2gamma.glsl"

// HSV
#include "res://space/hsv2rgb.glsl"
#include "res://space/rgb2hsv.glsl"

// Kelvin
#include "res://space/k2rgb.glsl"

// LAB
#include "res://space/rgb2lab.glsl"
#include "res://space/lab2rgb.glsl"

// LMS
#include "res://space/rgb2lms.glsl"
#include "res://space/lms2rgb.glsl"

// OkLab
#include "res://space/oklab2rgb.glsl"
#include "res://space/rgb2oklab.glsl"

// sRGB
#include "res://space/srgb2rgb.glsl"
#include "res://space/rgb2srgb.glsl"

// Wavelength
#include "res://space/w2rgb.glsl"

// XYZ
#include "res://space/rgb2xyz.glsl"
#include "res://space/xyz2rgb.glsl"

// YCbCr
#include "res://space/YCbCr2rgb.glsl"
#include "res://space/rgb2YCbCr.glsl"

// YIQ
#include "res://space/yiq2rgb.glsl"
#include "res://space/rgb2yiq.glsl"

// YPbPr
#include "res://space/YPbPr2rgb.glsl"
#include "res://space/rgb2YPbPr.glsl"

// YUV
#include "res://space/yuv2rgb.glsl"
#include "res://space/rgb2yuv.glsl"
