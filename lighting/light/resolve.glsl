#include "res://point.glsl"
#include "res://pointEvaluate.glsl"
#include "res://directional.glsl"
#include "res://directionalEvaluate.glsl"
#include "res://material.glsl"

#ifndef FNC_LIGHT_RESOLVE
#define FNC_LIGHT_RESOLVE

void lightResolve(LightPoint L, Material mat, inout ShadingData shadingData) {
    lightPointEvaluate(L, mat, shadingData);
}


void lightResolve(LightDirectional L, Material mat, inout ShadingData shadingData) {
    lightDirectionalEvaluate(L, mat, shadingData);
}

#endif